.class Lcom/transsion/camera/app/ReviewCameraActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "ReviewCameraActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ReviewCameraActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ReviewCameraActivity;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ReviewCameraActivity;)V
    .locals 0

    .line 145
    iput-object p1, p0, Lcom/transsion/camera/app/ReviewCameraActivity$1;->this$0:Lcom/transsion/camera/app/ReviewCameraActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 148
    iget-object p0, p0, Lcom/transsion/camera/app/ReviewCameraActivity$1;->this$0:Lcom/transsion/camera/app/ReviewCameraActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
