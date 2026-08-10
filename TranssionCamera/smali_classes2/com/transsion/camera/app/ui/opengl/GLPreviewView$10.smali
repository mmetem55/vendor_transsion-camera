.class Lcom/transsion/camera/app/ui/opengl/GLPreviewView$10;
.super Ljava/lang/Object;
.source "GLPreviewView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->modeReload()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/opengl/GLPreviewView;

.field final synthetic val$callbacker:Lcom/transsion/camera/app/common/preview/IPreviewCallbacker;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/opengl/GLPreviewView;Lcom/transsion/camera/app/common/preview/IPreviewCallbacker;)V
    .locals 0

    .line 442
    iput-object p1, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$10;->this$0:Lcom/transsion/camera/app/ui/opengl/GLPreviewView;

    iput-object p2, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$10;->val$callbacker:Lcom/transsion/camera/app/common/preview/IPreviewCallbacker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 445
    iget-object p0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$10;->val$callbacker:Lcom/transsion/camera/app/common/preview/IPreviewCallbacker;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/preview/IPreviewCallbacker;->modeReloadCallback()V

    return-void
.end method
