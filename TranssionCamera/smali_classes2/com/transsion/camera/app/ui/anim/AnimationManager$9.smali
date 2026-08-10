.class Lcom/transsion/camera/app/ui/anim/AnimationManager$9;
.super Ljava/lang/Object;
.source "AnimationManager.java"

# interfaces
.implements Lcom/transsion/camera/app/ui/view/SwitchAnimView$AnimEndCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/ui/anim/AnimationManager;->startWideAnim(Z)V
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

    .line 580
    iput-object p1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager$9;->this$0:Lcom/transsion/camera/app/ui/anim/AnimationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd()V
    .locals 0

    .line 583
    iget-object p0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager$9;->this$0:Lcom/transsion/camera/app/ui/anim/AnimationManager;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->access$200(Lcom/transsion/camera/app/ui/anim/AnimationManager;)V

    return-void
.end method
