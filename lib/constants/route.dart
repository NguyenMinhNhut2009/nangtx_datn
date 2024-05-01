import 'package:flutter/material.dart';

const urlBase = 'http://127.0.0.1:8000';
const urlLogin = '$urlBase/api/login'; // api login
const urlUser = '$urlBase/api/user'; // api get user
const urlLogout = '$urlBase/api/user/logout'; // api logout
const urlLesson = '$urlBase/api/class/lesson'; // api post lesson
const urlLessonSelectedDate =
    '$urlBase/api/class/lesson_schedule_task'; // api post lesson
const urlTask = '$urlBase/api/class/task';
// api get

//api get class List
const urlGetClassList = '$urlBase/api/class/list';

//api getClassDetail

const urlGetClassDetial = '$urlBase/api/class/detail';

//api get List HomeWok

const urlGetListHomeWork = '$urlBase/api/homework/lists';

//api get List question homeWork
const urlGetQuestionHomeWork = '$urlBase/api/homework/questions';
