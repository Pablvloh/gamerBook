package com.gamerbook

import groovy.transform.ToString

@ToString(includePackage=false, includeNames=true)
class Post{
    String content
    Date fecha
}