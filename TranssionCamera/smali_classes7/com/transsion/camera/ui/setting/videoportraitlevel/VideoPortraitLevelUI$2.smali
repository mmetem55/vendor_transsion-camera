.class Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI$2;
.super Landroid/os/Handler;
.source "VideoPortraitLevelUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;


# direct methods
.method constructor <init>(Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI$2;->this$0:Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 103
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x64

    if-eq v0, v1, :cond_6

    const/16 p1, 0xc8

    if-eq v0, p1, :cond_5

    const/16 p1, 0x12c

    if-eq v0, p1, :cond_4

    const/16 p1, 0x190

    if-eq v0, p1, :cond_3

    const/16 p1, 0x258

    if-eq v0, p1, :cond_2

    const/16 p1, 0x1f4

    const/4 v1, 0x0

    if-eq v0, p1, :cond_1

    const/16 p1, 0x1f5

    if-eq v0, p1, :cond_0

    goto :goto_0

    .line 124
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI$2;->this$0:Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->access$600(Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 125
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI$2;->this$0:Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->access$700(Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;)V

    .line 126
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI$2;->this$0:Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;

    invoke-static {p0, v1}, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->access$602(Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;Z)Z

    goto :goto_0

    .line 120
    :cond_1
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI$2;->this$0:Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->access$500(Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;)V

    .line 121
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI$2;->this$0:Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;

    invoke-static {p0, v1}, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->access$602(Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;Z)Z

    goto :goto_0

    .line 130
    :cond_2
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI$2;->this$0:Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->access$800(Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;)I

    move-result p1

    invoke-static {p0, p1}, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->access$900(Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;I)V

    goto :goto_0

    .line 117
    :cond_3
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI$2;->this$0:Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->access$400(Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;)V

    goto :goto_0

    .line 114
    :cond_4
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI$2;->this$0:Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->access$300(Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;)V

    goto :goto_0

    .line 111
    :cond_5
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI$2;->this$0:Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->access$200(Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;)V

    goto :goto_0

    .line 105
    :cond_6
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI$2;->this$0:Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->access$100(Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;Ljava/lang/String;)V

    :cond_7
    :goto_0
    return-void
.end method
