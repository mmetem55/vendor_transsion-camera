.class public Lcom/vskit/arsdk/filter/GLImageTwoInputFilter;
.super Lcom/vskit/arsdk/filter/GLImageFilter;
.source "GLImageTwoInputFilter.java"


# instance fields
.field private cameraTypeHandler:I

.field private mCameraType:I

.field private mSplitType:I

.field private splitHandler:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const-string v0, "attribute vec4 aPosition;                                  \nattribute vec4 aTextureCoord;                              \nvarying vec2 textureCoordinate;                            \nvoid main() {                                              \n    gl_Position = aPosition;                               \n    textureCoordinate = aTextureCoord.xy;                  \n}                                                          \n"

    const-string v1, "// \u9ed8\u8ba4\u6ee4\u955c\nprecision mediump float;\nvarying vec2 textureCoordinate;\nuniform sampler2D inputTexture;\nuniform int type;\nuniform int cameraType;\nvoid main() {\n    if (type == 2){\n        bool isFirst = cameraType == 1;\n        bool flag = textureCoordinate.x<=0.5;\n        if (isFirst){\n            if (flag){\n                gl_FragColor = texture2D(inputTexture, vec2(0.75-textureCoordinate.x, 1.0-textureCoordinate.y));\n            } else {\n                gl_FragColor = texture2D(inputTexture, vec2(textureCoordinate.x-0.25, textureCoordinate.y));\n            }\n        } else {\n            if (flag){\n                gl_FragColor = texture2D(inputTexture, vec2(textureCoordinate.x, textureCoordinate.y));\n            } else {\n                gl_FragColor = texture2D(inputTexture, vec2(1.0-textureCoordinate.x, 1.0-textureCoordinate.y));\n            }\n        }\n    } else if (type ==3){\n        float num = 1.0/3.0;\n        if (textureCoordinate.x<=num){\n            gl_FragColor = texture2D(inputTexture, vec2(num+textureCoordinate.x, textureCoordinate.y));\n        } else if (textureCoordinate.x>=num*2.0){\n            gl_FragColor = texture2D(inputTexture, vec2(textureCoordinate.x-num, textureCoordinate.y));\n        } else {\n            gl_FragColor = texture2D(inputTexture, vec2(textureCoordinate.x, 1.0-textureCoordinate.y));\n        }\n    } else if (type == 9){\n        float num = 1.0/3.0;\n        if (textureCoordinate.x<=num){\n            if (textureCoordinate.y<=num){\n                gl_FragColor = texture2D(inputTexture, vec2(num+textureCoordinate.x, num+textureCoordinate.y));\n            } else if (textureCoordinate.y<=num*2.0){\n                gl_FragColor = texture2D(inputTexture, vec2(num+textureCoordinate.x, textureCoordinate.y));\n            } else {\n                gl_FragColor = texture2D(inputTexture, vec2(num+textureCoordinate.x, textureCoordinate.y-num));\n            }\n        } else if (textureCoordinate.x<=num*2.0){\n            if (textureCoordinate.y<=num){\n                gl_FragColor = texture2D(inputTexture, vec2(textureCoordinate.x, num+textureCoordinate.y));\n            } else if (textureCoordinate.y<=num*2.0){\n                gl_FragColor = texture2D(inputTexture, vec2(textureCoordinate.x, textureCoordinate.y));\n            } else {\n                gl_FragColor = texture2D(inputTexture, vec2(textureCoordinate.x, textureCoordinate.y-num));\n            }\n        } else {\n            if (textureCoordinate.y<=num){\n                gl_FragColor = texture2D(inputTexture, vec2(textureCoordinate.x-num, num+textureCoordinate.y));\n            } else if (textureCoordinate.y<=num*2.0){\n                gl_FragColor = texture2D(inputTexture, vec2(textureCoordinate.x-num, textureCoordinate.y));\n            } else {\n                gl_FragColor = texture2D(inputTexture, vec2(textureCoordinate.x-num, textureCoordinate.y-num));\n            }\n        }\n    } else if (type == 5){\n        bool isFirst = cameraType == 1;\n        bool flag = textureCoordinate.y<=0.5;\n        if (isFirst){\n            if (flag){\n                gl_FragColor = texture2D(inputTexture, vec2(textureCoordinate.x, 1.0-textureCoordinate.y));\n            } else {\n                gl_FragColor = texture2D(inputTexture, vec2(textureCoordinate.x, textureCoordinate.y));\n            }\n        } else {\n            if (flag){\n                gl_FragColor = texture2D(inputTexture, vec2(textureCoordinate.x, textureCoordinate.y));\n            } else {\n                gl_FragColor = texture2D(inputTexture, vec2(textureCoordinate.x, 1.0-textureCoordinate.y));\n            }\n        }\n    }else {\n        gl_FragColor = texture2D(inputTexture, textureCoordinate);\n    }\n}"

    .line 108
    invoke-direct {p0, p1, v0, v1}, Lcom/vskit/arsdk/filter/GLImageFilter;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public initProgramHandle()V
    .locals 2

    .line 113
    invoke-super {p0}, Lcom/vskit/arsdk/filter/GLImageFilter;->initProgramHandle()V

    .line 114
    iget v0, p0, Lcom/vskit/arsdk/filter/GLImageFilter;->mProgramHandle:I

    const-string v1, "type"

    invoke-static {v0, v1}, Landroid/opengl/GLES30;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/vskit/arsdk/filter/GLImageTwoInputFilter;->splitHandler:I

    .line 115
    iget v0, p0, Lcom/vskit/arsdk/filter/GLImageFilter;->mProgramHandle:I

    const-string v1, "cameraType"

    invoke-static {v0, v1}, Landroid/opengl/GLES30;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/vskit/arsdk/filter/GLImageTwoInputFilter;->cameraTypeHandler:I

    const-string p0, "splitHandler"

    .line 116
    invoke-static {p0}, Lcom/vskit/arsdk/utils/OpenGLUtil;->checkGlError(Ljava/lang/String;)V

    return-void
.end method

.method public onDrawFrameBegin()V
    .locals 2

    .line 121
    invoke-super {p0}, Lcom/vskit/arsdk/filter/GLImageFilter;->onDrawFrameBegin()V

    .line 122
    iget v0, p0, Lcom/vskit/arsdk/filter/GLImageTwoInputFilter;->splitHandler:I

    iget v1, p0, Lcom/vskit/arsdk/filter/GLImageTwoInputFilter;->mSplitType:I

    invoke-static {v0, v1}, Landroid/opengl/GLES30;->glUniform1i(II)V

    .line 123
    iget v0, p0, Lcom/vskit/arsdk/filter/GLImageTwoInputFilter;->cameraTypeHandler:I

    iget p0, p0, Lcom/vskit/arsdk/filter/GLImageTwoInputFilter;->mCameraType:I

    invoke-static {v0, p0}, Landroid/opengl/GLES30;->glUniform1i(II)V

    return-void
.end method

.method public setCameraType(I)V
    .locals 0

    .line 131
    iput p1, p0, Lcom/vskit/arsdk/filter/GLImageTwoInputFilter;->mCameraType:I

    return-void
.end method

.method public setSplitType(I)V
    .locals 0

    .line 127
    iput p1, p0, Lcom/vskit/arsdk/filter/GLImageTwoInputFilter;->mSplitType:I

    return-void
.end method
