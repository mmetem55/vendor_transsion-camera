.class Lcom/transsion/camera/app/ui/opengl/GLPreviewView$12;
.super Ljava/lang/Object;
.source "GLPreviewView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->setNormalPreview()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/opengl/GLPreviewView;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/opengl/GLPreviewView;)V
    .locals 0

    .line 508
    iput-object p1, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$12;->this$0:Lcom/transsion/camera/app/ui/opengl/GLPreviewView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 511
    iget-object v0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$12;->this$0:Lcom/transsion/camera/app/ui/opengl/GLPreviewView;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->access$1400(Lcom/transsion/camera/app/ui/opengl/GLPreviewView;)Lcom/transsion/camera/app/ui/opengl/Texture2dProgram$ProgramType;

    move-result-object v0

    sget-object v1, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram$ProgramType;->TEXTURE_EXT_FOR_P3_VIDEO:Lcom/transsion/camera/app/ui/opengl/Texture2dProgram$ProgramType;

    if-ne v0, v1, :cond_0

    .line 512
    iget-object v0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$12;->this$0:Lcom/transsion/camera/app/ui/opengl/GLPreviewView;

    sget-object v1, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram$ProgramType;->TEXTURE_EXT:Lcom/transsion/camera/app/ui/opengl/Texture2dProgram$ProgramType;

    invoke-static {v0, v1}, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->access$1402(Lcom/transsion/camera/app/ui/opengl/GLPreviewView;Lcom/transsion/camera/app/ui/opengl/Texture2dProgram$ProgramType;)Lcom/transsion/camera/app/ui/opengl/Texture2dProgram$ProgramType;

    .line 513
    iget-object v0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$12;->this$0:Lcom/transsion/camera/app/ui/opengl/GLPreviewView;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->access$500(Lcom/transsion/camera/app/ui/opengl/GLPreviewView;)Landroid/graphics/SurfaceTexture;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 514
    iget-object p0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$12;->this$0:Lcom/transsion/camera/app/ui/opengl/GLPreviewView;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->access$1500(Lcom/transsion/camera/app/ui/opengl/GLPreviewView;)V

    :cond_0
    return-void
.end method
