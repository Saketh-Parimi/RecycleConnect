from fastapi import APIRouter, status, Body
from fastapi.encoders import jsonable_encoder
from fastapi.responses import JSONResponse 
from config import settings
from db import db
from models.reply import ReplyModel
from typing import List


router = APIRouter()

@router.get('/{post_id}',response_model=List[ReplyModel])
async def get_reply_for_post(post_id):

    all_posts = await db.replies.find({"post_id": post_id}).to_list(1000)
    return JSONResponse(status_code=status.HTTP_200_OK,content=all_posts)

@router.post('/',response_model=List[ReplyModel])
async def add_reply(reply: ReplyModel=Body(...)):

    reply = jsonable_encoder(reply)   
    new_reply = await db.replies.insert_one(reply)
    created_reply = await db.replies.find_one({"_id":new_reply.inserted_id})
    return JSONResponse(status_code=status.HTTP_201_CREATED,content=created_reply)

