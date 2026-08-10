.class Lcom/transsion/camera/ui/setting/focus/LaserFocusView$Mylistener;
.super Ljava/lang/Object;
.source "LaserFocusView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/focus/LaserFocusView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Mylistener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/ui/setting/focus/LaserFocusView;

.field timeEnd:J

.field timeStart:J


# direct methods
.method constructor <init>(Lcom/transsion/camera/ui/setting/focus/LaserFocusView;)V
    .locals 0

    .line 205
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/focus/LaserFocusView$Mylistener;->this$0:Lcom/transsion/camera/ui/setting/focus/LaserFocusView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 5

    .line 216
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/focus/LaserFocusView$Mylistener;->this$0:Lcom/transsion/camera/ui/setting/focus/LaserFocusView;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/focus/LaserFocusView;->access$000(Lcom/transsion/camera/ui/setting/focus/LaserFocusView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/ui/setting/focus/LaserFocusView;->access$100(Lcom/transsion/camera/ui/setting/focus/LaserFocusView;Ljava/util/ArrayList;)V

    .line 217
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/focus/LaserFocusView$Mylistener;->this$0:Lcom/transsion/camera/ui/setting/focus/LaserFocusView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/transsion/camera/ui/setting/focus/LaserFocusView;->access$202(Lcom/transsion/camera/ui/setting/focus/LaserFocusView;Z)Z

    .line 218
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/camera/ui/setting/focus/LaserFocusView$Mylistener;->timeEnd:J

    .line 219
    invoke-static {}, Lcom/transsion/camera/ui/setting/focus/LaserFocusView;->access$300()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "animatorSet total time: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/transsion/camera/ui/setting/focus/LaserFocusView$Mylistener;->timeEnd:J

    iget-wide v3, p0, Lcom/transsion/camera/ui/setting/focus/LaserFocusView$Mylistener;->timeStart:J

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    .line 211
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/camera/ui/setting/focus/LaserFocusView$Mylistener;->timeStart:J

    return-void
.end method
