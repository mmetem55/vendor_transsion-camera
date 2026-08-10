.class Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI$1;
.super Landroid/os/Handler;
.source "SuperNightFilterSettingUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI$1;->this$0:Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 85
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x64

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 88
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI$1;->this$0:Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->access$000(Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
