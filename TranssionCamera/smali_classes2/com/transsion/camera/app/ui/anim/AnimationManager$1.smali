.class Lcom/transsion/camera/app/ui/anim/AnimationManager$1;
.super Ljava/lang/Object;
.source "AnimationManager.java"

# interfaces
.implements Lcom/transsion/camera/app/common/preview/IPreviewRenderedCallbacker;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/anim/AnimationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/anim/AnimationManager;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/anim/AnimationManager;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager$1;->this$0:Lcom/transsion/camera/app/ui/anim/AnimationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public previewRendered(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    .line 99
    iget-object p1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager$1;->this$0:Lcom/transsion/camera/app/ui/anim/AnimationManager;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->access$000(Lcom/transsion/camera/app/ui/anim/AnimationManager;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 100
    iget-object p0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager$1;->this$0:Lcom/transsion/camera/app/ui/anim/AnimationManager;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->access$100(Lcom/transsion/camera/app/ui/anim/AnimationManager;Z)V

    goto :goto_0

    .line 102
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager$1;->this$0:Lcom/transsion/camera/app/ui/anim/AnimationManager;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->access$200(Lcom/transsion/camera/app/ui/anim/AnimationManager;)V

    :goto_0
    return-void
.end method
