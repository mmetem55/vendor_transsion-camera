.class public Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector;
.super Ljava/lang/Object;
.source "KeyEventDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector$IKeyEventCallback;,
        Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector$KeyEventHandler;
    }
.end annotation


# static fields
.field private static final LONGPRESS_TIMEOUT:I

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static final TAP_TIMEOUT:I


# instance fields
.field private mCallback:Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector$IKeyEventCallback;

.field private mHandler:Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector$KeyEventHandler;

.field private mInLongPress:Z

.field private mIsKeyDown:Z

.field private mIsLongPressEnabled:Z

.field private mLongPresskeyCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 13
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    .line 20
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    sput v0, Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector;->LONGPRESS_TIMEOUT:I

    .line 21
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    sput v0, Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector;->TAP_TIMEOUT:I

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector$IKeyEventCallback;Landroid/os/Looper;)V
    .locals 1

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-object p1, p0, Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector;->mCallback:Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector$IKeyEventCallback;

    if-eqz p2, :cond_0

    .line 86
    new-instance p1, Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector$KeyEventHandler;

    invoke-direct {p1, p0, p2}, Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector$KeyEventHandler;-><init>(Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector;->mHandler:Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector$KeyEventHandler;

    .line 87
    sget-object p1, Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "handler "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector;->mHandler:Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector$KeyEventHandler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 89
    :cond_0
    new-instance p1, Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector$KeyEventHandler;

    invoke-direct {p1, p0}, Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector$KeyEventHandler;-><init>(Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector;)V

    iput-object p1, p0, Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector;->mHandler:Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector$KeyEventHandler;

    :goto_0
    const/4 p1, 0x1

    .line 91
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector;->mIsLongPressEnabled:Z

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector;)Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector$IKeyEventCallback;
    .locals 0

    .line 12
    iget-object p0, p0, Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector;->mCallback:Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector$IKeyEventCallback;

    return-object p0
.end method

.method static synthetic access$102(Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector;Z)Z
    .locals 0

    .line 12
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector;->mInLongPress:Z

    return p1
.end method


# virtual methods
.method public keyDown(ILandroid/view/KeyEvent;)V
    .locals 7

    .line 110
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector;->mIsLongPressEnabled:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector;->mIsKeyDown:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector;->mInLongPress:Z

    if-nez v0, :cond_0

    .line 111
    iput p1, p0, Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector;->mLongPresskeyCode:I

    const/4 v0, 0x0

    .line 112
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector;->mInLongPress:Z

    .line 113
    iget-object v0, p0, Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector;->mHandler:Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector$KeyEventHandler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 114
    iget-object v0, p0, Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector;->mHandler:Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector$KeyEventHandler;

    const/4 v2, 0x3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 115
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v3

    sget p2, Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector;->TAP_TIMEOUT:I

    int-to-long v5, p2

    add-long/2addr v3, v5

    sget p2, Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector;->LONGPRESS_TIMEOUT:I

    int-to-long v5, p2

    add-long/2addr v3, v5

    .line 114
    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 117
    :cond_0
    iget-boolean p2, p0, Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector;->mIsLongPressEnabled:Z

    if-eqz p2, :cond_1

    iget-boolean p2, p0, Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector;->mInLongPress:Z

    if-eqz p2, :cond_1

    iget p2, p0, Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector;->mLongPresskeyCode:I

    if-ne p2, p1, :cond_1

    .line 118
    iget-object p2, p0, Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector;->mHandler:Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector$KeyEventHandler;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 120
    :cond_1
    iput-boolean v1, p0, Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector;->mIsKeyDown:Z

    return-void
.end method

.method public keyUp(ILandroid/view/KeyEvent;)V
    .locals 2

    .line 130
    iget-boolean p2, p0, Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector;->mIsKeyDown:Z

    const/4 v0, 0x0

    if-nez p2, :cond_1

    iget-boolean p2, p0, Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector;->mInLongPress:Z

    if-eqz p2, :cond_0

    goto :goto_0

    .line 143
    :cond_0
    sget-object p1, Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p2, "call keyUp before keyDown,long press maybe out of times"

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_1

    .line 131
    :cond_1
    :goto_0
    iget-boolean p2, p0, Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector;->mIsLongPressEnabled:Z

    if-eqz p2, :cond_3

    .line 132
    iget-object p2, p0, Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector;->mHandler:Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector$KeyEventHandler;

    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 133
    iget-object p2, p0, Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector;->mHandler:Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector$KeyEventHandler;

    const/4 v1, 0x3

    invoke-virtual {p2, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 134
    iget-boolean p2, p0, Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector;->mInLongPress:Z

    if-eqz p2, :cond_2

    iget p2, p0, Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector;->mLongPresskeyCode:I

    if-ne p2, p1, :cond_2

    .line 135
    iget-object p2, p0, Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector;->mHandler:Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector$KeyEventHandler;

    const/4 v1, 0x2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1

    .line 137
    :cond_2
    iget-object p2, p0, Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector;->mHandler:Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector$KeyEventHandler;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1

    .line 140
    :cond_3
    iget-object p2, p0, Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector;->mHandler:Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector$KeyEventHandler;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 145
    :goto_1
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector;->mIsKeyDown:Z

    return-void
.end method
