from django.urls import path, include
from django.contrib import admin
from . import views

urlpatterns = [
    path('', views.frontpage, name='frontpage'),
    # path('signup/',views.signup, name='signup')
     
]
