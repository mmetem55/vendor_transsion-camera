.class public Lcom/transsion/ardrawlines/unity/UnityAndroidUtils;
.super Ljava/lang/Object;
.source "UnityAndroidUtils.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "UnityAndroidUtils"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static OnReceive(Ljava/lang/String;)V
    .locals 2

    .line 12
    new-instance v0, Lcom/transsion/ardrawlines/unity/MessageEvent;

    invoke-direct {v0, p0}, Lcom/transsion/ardrawlines/unity/MessageEvent;-><init>(Ljava/lang/String;)V

    .line 13
    sget-object p0, Lcom/transsion/ardrawlines/unity/UnityAndroidUtils;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/transsion/ardrawlines/unity/MessageEvent;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p0

    invoke-virtual {p0, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public static OnReceive(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 18
    new-instance v0, Lcom/transsion/ardrawlines/unity/MessageEvent;

    invoke-direct {v0, p0, p1}, Lcom/transsion/ardrawlines/unity/MessageEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    sget-object p0, Lcom/transsion/ardrawlines/unity/UnityAndroidUtils;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/transsion/ardrawlines/unity/MessageEvent;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p0

    invoke-virtual {p0, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public static OnReceive(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 24
    new-instance v0, Lcom/transsion/ardrawlines/unity/MessageEvent;

    invoke-direct {v0, p0, p1, p2}, Lcom/transsion/ardrawlines/unity/MessageEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    sget-object p0, Lcom/transsion/ardrawlines/unity/UnityAndroidUtils;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/transsion/ardrawlines/unity/MessageEvent;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p0

    invoke-virtual {p0, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method
