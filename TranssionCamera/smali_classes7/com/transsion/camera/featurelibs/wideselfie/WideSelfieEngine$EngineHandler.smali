.class final Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieEngine$EngineHandler;
.super Landroid/os/Handler;
.source "WideSelfieEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "EngineHandler"
.end annotation


# static fields
.field private static final MSG_CONFIG:I = 0x2

.field private static final MSG_INIT:I = 0x1

.field private static final MSG_PROCESS:I = 0x4

.field private static final MSG_RESET:I = 0x5

.field private static final MSG_SET_CALLBACK:I = 0x3

.field private static final MSG_UNINIT:I = 0x6


# instance fields
.field private final mWideSelfie:Lcom/transsion/camera/featurelibs/wideselfie/IWideSelfie;


# direct methods
.method private constructor <init>(Landroid/os/Looper;)V
    .locals 0

    .line 94
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 95
    new-instance p1, Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieImpl;

    invoke-direct {p1}, Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieImpl;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieEngine$EngineHandler;->mWideSelfie:Lcom/transsion/camera/featurelibs/wideselfie/IWideSelfie;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Looper;Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieEngine$1;)V
    .locals 0

    .line 82
    invoke-direct {p0, p1}, Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieEngine$EngineHandler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method private handleConfig(Lcom/transsion/camera/featurelibs/wideselfie/ConfigParam;)V
    .locals 0

    .line 151
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieEngine$EngineHandler;->mWideSelfie:Lcom/transsion/camera/featurelibs/wideselfie/IWideSelfie;

    invoke-interface {p0, p1}, Lcom/transsion/camera/featurelibs/wideselfie/IWideSelfie;->config(Lcom/transsion/camera/featurelibs/wideselfie/ConfigParam;)Z

    return-void
.end method

.method private handleInit()V
    .locals 0

    .line 147
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieEngine$EngineHandler;->mWideSelfie:Lcom/transsion/camera/featurelibs/wideselfie/IWideSelfie;

    invoke-interface {p0}, Lcom/transsion/camera/featurelibs/wideselfie/IWideSelfie;->init()Z

    return-void
.end method

.method private handleProcess(ILandroid/util/Pair;[Landroid/graphics/Rect;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/util/Pair<",
            "Ljava/lang/Object;",
            "[B>;[",
            "Landroid/graphics/Rect;",
            ")V"
        }
    .end annotation

    .line 159
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieEngine$EngineHandler;->mWideSelfie:Lcom/transsion/camera/featurelibs/wideselfie/IWideSelfie;

    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/camera/featurelibs/wideselfie/IWideSelfie;->process(ILandroid/util/Pair;[Landroid/graphics/Rect;)V

    return-void
.end method

.method private handleReset()V
    .locals 0

    .line 163
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieEngine$EngineHandler;->mWideSelfie:Lcom/transsion/camera/featurelibs/wideselfie/IWideSelfie;

    invoke-interface {p0}, Lcom/transsion/camera/featurelibs/wideselfie/IWideSelfie;->reset()Z

    return-void
.end method

.method private handleSetCallback(Lcom/transsion/camera/featurelibs/wideselfie/IWideSelfie$WideSelfieCallback;)V
    .locals 0

    .line 155
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieEngine$EngineHandler;->mWideSelfie:Lcom/transsion/camera/featurelibs/wideselfie/IWideSelfie;

    invoke-interface {p0, p1}, Lcom/transsion/camera/featurelibs/wideselfie/IWideSelfie;->setCallback(Lcom/transsion/camera/featurelibs/wideselfie/IWideSelfie$WideSelfieCallback;)V

    return-void
.end method

.method private handleUnInit()V
    .locals 0

    .line 167
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieEngine$EngineHandler;->mWideSelfie:Lcom/transsion/camera/featurelibs/wideselfie/IWideSelfie;

    invoke-interface {p0}, Lcom/transsion/camera/featurelibs/wideselfie/IWideSelfie;->unInit()Z

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 100
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 102
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 140
    invoke-static {}, Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieEngine;->access$100()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid message: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 137
    :pswitch_0
    invoke-direct {p0}, Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieEngine$EngineHandler;->handleUnInit()V

    goto :goto_0

    .line 134
    :pswitch_1
    invoke-direct {p0}, Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieEngine$EngineHandler;->handleReset()V

    goto :goto_0

    .line 124
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 125
    instance-of v1, v0, Landroid/util/Pair;

    if-nez v1, :cond_0

    .line 126
    invoke-static {}, Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieEngine;->access$100()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "invalid data"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 129
    :cond_0
    check-cast v0, Landroid/util/Pair;

    .line 131
    iget p1, p1, Landroid/os/Message;->arg1:I

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, [Landroid/graphics/Rect;

    invoke-direct {p0, p1, v1, v0}, Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieEngine$EngineHandler;->handleProcess(ILandroid/util/Pair;[Landroid/graphics/Rect;)V

    goto :goto_0

    .line 115
    :pswitch_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz p1, :cond_1

    .line 116
    instance-of v0, p1, Lcom/transsion/camera/featurelibs/wideselfie/IWideSelfie$WideSelfieCallback;

    if-nez v0, :cond_1

    .line 118
    invoke-static {}, Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieEngine;->access$100()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "invalid WideSelfieCallback"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 121
    :cond_1
    check-cast p1, Lcom/transsion/camera/featurelibs/wideselfie/IWideSelfie$WideSelfieCallback;

    invoke-direct {p0, p1}, Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieEngine$EngineHandler;->handleSetCallback(Lcom/transsion/camera/featurelibs/wideselfie/IWideSelfie$WideSelfieCallback;)V

    goto :goto_0

    .line 107
    :pswitch_4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 108
    instance-of v0, p1, Lcom/transsion/camera/featurelibs/wideselfie/ConfigParam;

    if-nez v0, :cond_2

    .line 109
    invoke-static {}, Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieEngine;->access$100()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "invalid ConfigParameters"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 112
    :cond_2
    check-cast p1, Lcom/transsion/camera/featurelibs/wideselfie/ConfigParam;

    invoke-direct {p0, p1}, Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieEngine$EngineHandler;->handleConfig(Lcom/transsion/camera/featurelibs/wideselfie/ConfigParam;)V

    goto :goto_0

    .line 104
    :pswitch_5
    invoke-direct {p0}, Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieEngine$EngineHandler;->handleInit()V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
