.class Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas$AttributeShaderParameter;
.super Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas$ShaderParameter;
.source "GLES20Canvas.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AttributeShaderParameter"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 196
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas$ShaderParameter;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public loadHandle(I)V
    .locals 1

    .line 201
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas$ShaderParameter;->mName:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas$ShaderParameter;->handle:I

    .line 202
    invoke-static {}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->checkError()V

    return-void
.end method
