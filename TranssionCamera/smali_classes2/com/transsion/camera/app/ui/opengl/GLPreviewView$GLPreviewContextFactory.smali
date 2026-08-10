.class Lcom/transsion/camera/app/ui/opengl/GLPreviewView$GLPreviewContextFactory;
.super Ljava/lang/Object;
.source "GLPreviewView.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$EGLContextFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/opengl/GLPreviewView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GLPreviewContextFactory"
.end annotation


# instance fields
.field private EGL_CONTEXT_CLIENT_VERSION:I

.field private mEGLContextClientVersion:I

.field final synthetic this$0:Lcom/transsion/camera/app/ui/opengl/GLPreviewView;


# direct methods
.method public static synthetic $r8$lambda$93EaEPR7nuxLCqsX9Xsu0ZO-EEc(Lcom/transsion/camera/app/ui/opengl/GLPreviewView$GLPreviewContextFactory;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$GLPreviewContextFactory;->lambda$destroyContext$0()V

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/app/ui/opengl/GLPreviewView;I)V
    .locals 0

    .line 236
    iput-object p1, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$GLPreviewContextFactory;->this$0:Lcom/transsion/camera/app/ui/opengl/GLPreviewView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p1, 0x3098

    .line 233
    iput p1, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$GLPreviewContextFactory;->EGL_CONTEXT_CLIENT_VERSION:I

    .line 237
    iput p2, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$GLPreviewContextFactory;->mEGLContextClientVersion:I

    return-void
.end method

.method private synthetic lambda$destroyContext$0()V
    .locals 4

    .line 256
    iget-object v0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$GLPreviewContextFactory;->this$0:Lcom/transsion/camera/app/ui/opengl/GLPreviewView;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->access$1000(Lcom/transsion/camera/app/ui/opengl/GLPreviewView;)Lcom/transsion/camera/app/ui/opengl/GLPreviewView$SurfaceTextureListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 257
    iget-object v0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$GLPreviewContextFactory;->this$0:Lcom/transsion/camera/app/ui/opengl/GLPreviewView;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->access$1000(Lcom/transsion/camera/app/ui/opengl/GLPreviewView;)Lcom/transsion/camera/app/ui/opengl/GLPreviewView$SurfaceTextureListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$SurfaceTextureListener;->getSurfaceDestroyReason()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 259
    :goto_0
    invoke-static {}, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->access$000()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "destroyContext, reason = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 262
    iget-object v0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$GLPreviewContextFactory;->this$0:Lcom/transsion/camera/app/ui/opengl/GLPreviewView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->getWidth()I

    move-result v0

    .line 263
    iget-object v1, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$GLPreviewContextFactory;->this$0:Lcom/transsion/camera/app/ui/opengl/GLPreviewView;

    invoke-virtual {v1}, Landroid/opengl/GLSurfaceView;->getHeight()I

    move-result v1

    if-lez v0, :cond_1

    if-lez v1, :cond_1

    .line 265
    iget-object v0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$GLPreviewContextFactory;->this$0:Lcom/transsion/camera/app/ui/opengl/GLPreviewView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$GLPreviewContextFactory;->this$0:Lcom/transsion/camera/app/ui/opengl/GLPreviewView;

    invoke-virtual {v2}, Landroid/opengl/GLSurfaceView;->getHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->access$1102(Lcom/transsion/camera/app/ui/opengl/GLPreviewView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 266
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$GLPreviewContextFactory;->this$0:Lcom/transsion/camera/app/ui/opengl/GLPreviewView;

    invoke-static {v1}, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->access$1100(Lcom/transsion/camera/app/ui/opengl/GLPreviewView;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 267
    iget-object v1, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$GLPreviewContextFactory;->this$0:Lcom/transsion/camera/app/ui/opengl/GLPreviewView;

    invoke-virtual {v1, v0}, Landroid/opengl/GLSurfaceView;->draw(Landroid/graphics/Canvas;)V

    .line 268
    iget-object v0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$GLPreviewContextFactory;->this$0:Lcom/transsion/camera/app/ui/opengl/GLPreviewView;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$GLPreviewContextFactory;->this$0:Lcom/transsion/camera/app/ui/opengl/GLPreviewView;

    invoke-virtual {v2}, Landroid/opengl/GLSurfaceView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object p0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$GLPreviewContextFactory;->this$0:Lcom/transsion/camera/app/ui/opengl/GLPreviewView;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->access$1100(Lcom/transsion/camera/app/ui/opengl/GLPreviewView;)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-direct {v1, v2, p0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public createContext(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLContext;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 242
    iget v1, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$GLPreviewContextFactory;->EGL_CONTEXT_CLIENT_VERSION:I

    const/4 v2, 0x0

    aput v1, v0, v2

    iget p0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$GLPreviewContextFactory;->mEGLContextClientVersion:I

    const/4 v1, 0x1

    aput p0, v0, v1

    const/4 v1, 0x2

    const/16 v2, 0x3038

    aput v2, v0, v1

    .line 245
    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1, p2, p3, v1, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object p0

    .line 247
    invoke-static {}, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->access$000()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "create EGLContext,thread = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object p0
.end method

.method public destroyContext(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)V
    .locals 3

    .line 254
    iget-object v0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$GLPreviewContextFactory;->this$0:Lcom/transsion/camera/app/ui/opengl/GLPreviewView;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->access$700(Lcom/transsion/camera/app/ui/opengl/GLPreviewView;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$GLPreviewContextFactory$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$GLPreviewContextFactory$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/app/ui/opengl/GLPreviewView$GLPreviewContextFactory;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 272
    invoke-static {}, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->access$000()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "destroy EGLContext,thread = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 276
    iget-object v0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$GLPreviewContextFactory;->this$0:Lcom/transsion/camera/app/ui/opengl/GLPreviewView;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->access$800(Lcom/transsion/camera/app/ui/opengl/GLPreviewView;)V

    .line 277
    iget-object p0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$GLPreviewContextFactory;->this$0:Lcom/transsion/camera/app/ui/opengl/GLPreviewView;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->access$900(Lcom/transsion/camera/app/ui/opengl/GLPreviewView;)V

    .line 278
    invoke-interface {p1, p2, p3}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    .line 279
    :cond_0
    invoke-static {}, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->access$000()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "display:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " context: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ",thread:"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 280
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "eglDestroyContex ErrorCode:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
