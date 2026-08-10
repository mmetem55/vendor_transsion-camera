.class Lcom/transsion/camera/app/ArCoreMainActivity$VideoCallBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ArCoreMainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ArCoreMainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VideoCallBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ArCoreMainActivity;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/app/ArCoreMainActivity;)V
    .locals 0

    .line 258
    iput-object p1, p0, Lcom/transsion/camera/app/ArCoreMainActivity$VideoCallBroadcastReceiver;->this$0:Lcom/transsion/camera/app/ArCoreMainActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/app/ArCoreMainActivity;Lcom/transsion/camera/app/ArCoreMainActivity$1;)V
    .locals 0

    .line 258
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ArCoreMainActivity$VideoCallBroadcastReceiver;-><init>(Lcom/transsion/camera/app/ArCoreMainActivity;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 261
    invoke-static {}, Lcom/transsion/camera/app/ArCoreMainActivity;->access$000()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceive() called with: context = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "], intent = ["

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 262
    iget-object p0, p0, Lcom/transsion/camera/app/ArCoreMainActivity$VideoCallBroadcastReceiver;->this$0:Lcom/transsion/camera/app/ArCoreMainActivity;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/transsion/camera/app/ArCoreMainActivity;->access$502(Lcom/transsion/camera/app/ArCoreMainActivity;Z)Z

    return-void
.end method
