.class Lcom/transsion/camera/app/ui/opengl/GLPreviewView$2;
.super Ljava/lang/Object;
.source "GLPreviewView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->resetDrawState()V
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

    .line 102
    iput-object p1, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$2;->this$0:Lcom/transsion/camera/app/ui/opengl/GLPreviewView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 105
    iget-object p0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$2;->this$0:Lcom/transsion/camera/app/ui/opengl/GLPreviewView;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->access$302(Lcom/transsion/camera/app/ui/opengl/GLPreviewView;I)I

    return-void
.end method
