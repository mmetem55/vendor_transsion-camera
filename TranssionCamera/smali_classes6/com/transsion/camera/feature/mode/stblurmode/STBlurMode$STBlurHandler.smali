.class Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode$STBlurHandler;
.super Landroid/os/Handler;
.source "STBlurMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "STBlurHandler"
.end annotation


# static fields
.field private static final MSG_STBLUR_CHANGE_CONFIG:I = 0x6

.field private static final MSG_STBLUR_INIT:I = 0x1

.field private static final MSG_STBLUR_INIT_FACELIGHTING:I = 0x7

.field private static final MSG_STBLUR_INIT_RENDER:I = 0x5

.field private static final MSG_STBLUR_PAUSE:I = 0x3

.field private static final MSG_STBLUR_RESUME:I = 0x2

.field private static final MSG_STBLUR_UNINIT:I = 0x4


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;Landroid/os/Looper;)V
    .locals 0

    .line 635
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode$STBlurHandler;->this$0:Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;

    .line 636
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;Landroid/os/Looper;Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode$1;)V
    .locals 0

    .line 625
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode$STBlurHandler;-><init>(Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 641
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 643
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 672
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode$STBlurHandler;->this$0:Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->access$2500(Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;)Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid msg: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 668
    :pswitch_0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode$STBlurHandler;->this$0:Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->access$2400(Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;)V

    goto :goto_0

    .line 665
    :pswitch_1
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode$STBlurHandler;->this$0:Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/transsion/camera/feature/mode/stblurmode/STBlurConfig;

    invoke-static {p0, p1}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->access$2300(Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;Lcom/transsion/camera/feature/mode/stblurmode/STBlurConfig;)V

    goto :goto_0

    .line 661
    :pswitch_2
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode$STBlurHandler;->this$0:Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->access$2200(Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;)V

    goto :goto_0

    .line 657
    :pswitch_3
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode$STBlurHandler;->this$0:Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->access$2100(Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;)V

    goto :goto_0

    .line 653
    :pswitch_4
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode$STBlurHandler;->this$0:Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->access$2000(Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;)V

    goto :goto_0

    .line 649
    :pswitch_5
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode$STBlurHandler;->this$0:Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->access$1900(Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;)V

    goto :goto_0

    .line 645
    :pswitch_6
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode$STBlurHandler;->this$0:Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->access$1800(Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
