.class final Lcom/transsion/camera/featurelibs/panorama/PanoramaEngine$EngineHandler;
.super Landroid/os/Handler;
.source "PanoramaEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/featurelibs/panorama/PanoramaEngine;
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
.field private final mPanorama:Lcom/transsion/camera/featurelibs/panorama/IPanorama;


# direct methods
.method private constructor <init>(Landroid/os/Looper;)V
    .locals 0

    .line 92
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 93
    new-instance p1, Lcom/transsion/camera/featurelibs/panorama/PanoramaImpl;

    invoke-direct {p1}, Lcom/transsion/camera/featurelibs/panorama/PanoramaImpl;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/featurelibs/panorama/PanoramaEngine$EngineHandler;->mPanorama:Lcom/transsion/camera/featurelibs/panorama/IPanorama;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Looper;Lcom/transsion/camera/featurelibs/panorama/PanoramaEngine$1;)V
    .locals 0

    .line 80
    invoke-direct {p0, p1}, Lcom/transsion/camera/featurelibs/panorama/PanoramaEngine$EngineHandler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method private handleConfig(Lcom/transsion/camera/featurelibs/panorama/ConfigParam;)V
    .locals 0

    .line 147
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/panorama/PanoramaEngine$EngineHandler;->mPanorama:Lcom/transsion/camera/featurelibs/panorama/IPanorama;

    invoke-interface {p0, p1}, Lcom/transsion/camera/featurelibs/panorama/IPanorama;->config(Lcom/transsion/camera/featurelibs/panorama/ConfigParam;)Z

    return-void
.end method

.method private handleInit(Z)V
    .locals 0

    .line 143
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/panorama/PanoramaEngine$EngineHandler;->mPanorama:Lcom/transsion/camera/featurelibs/panorama/IPanorama;

    invoke-interface {p0, p1}, Lcom/transsion/camera/featurelibs/panorama/IPanorama;->init(Z)Z

    return-void
.end method

.method private handleProcess(ILandroid/util/Pair;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/util/Pair<",
            "Ljava/lang/Object;",
            "[B>;)V"
        }
    .end annotation

    .line 155
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/panorama/PanoramaEngine$EngineHandler;->mPanorama:Lcom/transsion/camera/featurelibs/panorama/IPanorama;

    invoke-interface {p0, p1, p2}, Lcom/transsion/camera/featurelibs/panorama/IPanorama;->process(ILandroid/util/Pair;)V

    return-void
.end method

.method private handleReset()V
    .locals 0

    .line 159
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/panorama/PanoramaEngine$EngineHandler;->mPanorama:Lcom/transsion/camera/featurelibs/panorama/IPanorama;

    invoke-interface {p0}, Lcom/transsion/camera/featurelibs/panorama/IPanorama;->reset()Z

    return-void
.end method

.method private handleSetCallback(Lcom/transsion/camera/featurelibs/panorama/IPanorama$PanoramaCallback;)V
    .locals 0

    .line 151
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/panorama/PanoramaEngine$EngineHandler;->mPanorama:Lcom/transsion/camera/featurelibs/panorama/IPanorama;

    invoke-interface {p0, p1}, Lcom/transsion/camera/featurelibs/panorama/IPanorama;->setCallback(Lcom/transsion/camera/featurelibs/panorama/IPanorama$PanoramaCallback;)V

    return-void
.end method

.method private handleUnInit()V
    .locals 0

    .line 163
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/panorama/PanoramaEngine$EngineHandler;->mPanorama:Lcom/transsion/camera/featurelibs/panorama/IPanorama;

    invoke-interface {p0}, Lcom/transsion/camera/featurelibs/panorama/IPanorama;->unInit()Z

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 98
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 100
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 136
    invoke-static {}, Lcom/transsion/camera/featurelibs/panorama/PanoramaEngine;->access$100()Lcom/transsion/camera/utils/debug/Log$Tag;

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

    .line 133
    :pswitch_0
    invoke-direct {p0}, Lcom/transsion/camera/featurelibs/panorama/PanoramaEngine$EngineHandler;->handleUnInit()V

    goto :goto_0

    .line 130
    :pswitch_1
    invoke-direct {p0}, Lcom/transsion/camera/featurelibs/panorama/PanoramaEngine$EngineHandler;->handleReset()V

    goto :goto_0

    .line 122
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 123
    instance-of v1, v0, Landroid/util/Pair;

    if-nez v1, :cond_0

    .line 124
    invoke-static {}, Lcom/transsion/camera/featurelibs/panorama/PanoramaEngine;->access$100()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "invalid byte[]"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 127
    :cond_0
    iget p1, p1, Landroid/os/Message;->arg1:I

    check-cast v0, Landroid/util/Pair;

    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/featurelibs/panorama/PanoramaEngine$EngineHandler;->handleProcess(ILandroid/util/Pair;)V

    goto :goto_0

    .line 113
    :pswitch_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz p1, :cond_1

    .line 114
    instance-of v0, p1, Lcom/transsion/camera/featurelibs/panorama/IPanorama$PanoramaCallback;

    if-nez v0, :cond_1

    .line 116
    invoke-static {}, Lcom/transsion/camera/featurelibs/panorama/PanoramaEngine;->access$100()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "invalid PanoramaCallback"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 119
    :cond_1
    check-cast p1, Lcom/transsion/camera/featurelibs/panorama/IPanorama$PanoramaCallback;

    invoke-direct {p0, p1}, Lcom/transsion/camera/featurelibs/panorama/PanoramaEngine$EngineHandler;->handleSetCallback(Lcom/transsion/camera/featurelibs/panorama/IPanorama$PanoramaCallback;)V

    goto :goto_0

    .line 105
    :pswitch_4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 106
    instance-of v0, p1, Lcom/transsion/camera/featurelibs/panorama/ConfigParam;

    if-nez v0, :cond_2

    .line 107
    invoke-static {}, Lcom/transsion/camera/featurelibs/panorama/PanoramaEngine;->access$100()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "invalid ConfigParameters"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 110
    :cond_2
    check-cast p1, Lcom/transsion/camera/featurelibs/panorama/ConfigParam;

    invoke-direct {p0, p1}, Lcom/transsion/camera/featurelibs/panorama/PanoramaEngine$EngineHandler;->handleConfig(Lcom/transsion/camera/featurelibs/panorama/ConfigParam;)V

    goto :goto_0

    .line 102
    :pswitch_5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/transsion/camera/featurelibs/panorama/PanoramaEngine$EngineHandler;->handleInit(Z)V

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
