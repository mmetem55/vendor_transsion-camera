.class Lcom/transsion/camera/app/ui/opengl/GLPreviewView$14;
.super Ljava/lang/Object;
.source "GLPreviewView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->getBitmap(II)Landroid/graphics/Bitmap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/opengl/GLPreviewView;

.field final synthetic val$height:I

.field final synthetic val$width:I


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/opengl/GLPreviewView;II)V
    .locals 0

    .line 725
    iput-object p1, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$14;->this$0:Lcom/transsion/camera/app/ui/opengl/GLPreviewView;

    iput p2, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$14;->val$width:I

    iput p3, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$14;->val$height:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 728
    iget-object v0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$14;->this$0:Lcom/transsion/camera/app/ui/opengl/GLPreviewView;

    iget v1, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$14;->val$width:I

    iget v2, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$14;->val$height:I

    invoke-static {v0, v1, v2}, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->access$1600(Lcom/transsion/camera/app/ui/opengl/GLPreviewView;II)V

    .line 729
    iget-object p0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$14;->this$0:Lcom/transsion/camera/app/ui/opengl/GLPreviewView;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mStateLock:Lcom/transsion/camera/utils/StateWait;

    invoke-virtual {p0}, Lcom/transsion/camera/utils/StateWait;->notifyState()V

    return-void
.end method
