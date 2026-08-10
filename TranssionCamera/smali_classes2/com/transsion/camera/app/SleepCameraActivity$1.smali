.class Lcom/transsion/camera/app/SleepCameraActivity$1;
.super Ljava/lang/Object;
.source "SleepCameraActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/SleepCameraActivity;->onCreateTasks(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/SleepCameraActivity;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/SleepCameraActivity;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/transsion/camera/app/SleepCameraActivity$1;->this$0:Lcom/transsion/camera/app/SleepCameraActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 39
    invoke-static {}, Lcom/transsion/camera/app/SleepCameraActivity;->access$000()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    const-string v0, "onClick"

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 40
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 41
    iget-object p1, p0, Lcom/transsion/camera/app/SleepCameraActivity$1;->this$0:Lcom/transsion/camera/app/SleepCameraActivity;

    invoke-static {p1}, Lcom/transsion/camera/app/SleepCameraActivity;->access$100(Lcom/transsion/camera/app/SleepCameraActivity;)J

    move-result-wide v2

    sub-long v2, v0, v2

    .line 43
    iget-object p1, p0, Lcom/transsion/camera/app/SleepCameraActivity$1;->this$0:Lcom/transsion/camera/app/SleepCameraActivity;

    invoke-static {p1, v0, v1}, Lcom/transsion/camera/app/SleepCameraActivity;->access$102(Lcom/transsion/camera/app/SleepCameraActivity;J)J

    const-wide/16 v0, 0x0

    cmp-long p1, v2, v0

    if-lez p1, :cond_0

    const-wide/16 v0, 0x1f4

    cmp-long p1, v2, v0

    if-gez p1, :cond_0

    .line 46
    iget-object p0, p0, Lcom/transsion/camera/app/SleepCameraActivity$1;->this$0:Lcom/transsion/camera/app/SleepCameraActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method
