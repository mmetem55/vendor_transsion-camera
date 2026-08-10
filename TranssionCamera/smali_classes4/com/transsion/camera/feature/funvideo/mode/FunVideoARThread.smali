.class public Lcom/transsion/camera/feature/funvideo/mode/FunVideoARThread;
.super Landroid/os/HandlerThread;
.source "FunVideoARThread.java"


# static fields
.field private static mARStickerThread:Lcom/transsion/camera/feature/funvideo/mode/FunVideoARThread;


# instance fields
.field private mAreaType:I

.field private mFunVideoARCache:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/faceunity/entity/Effect;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 12
    iput p1, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoARThread;->mAreaType:I

    return-void
.end method

.method public static getInstance()Lcom/transsion/camera/feature/funvideo/mode/FunVideoARThread;
    .locals 2

    .line 20
    sget-object v0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoARThread;->mARStickerThread:Lcom/transsion/camera/feature/funvideo/mode/FunVideoARThread;

    if-nez v0, :cond_0

    .line 21
    new-instance v0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoARThread;

    const-string v1, "arSticker_thread"

    invoke-direct {v0, v1}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoARThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoARThread;->mARStickerThread:Lcom/transsion/camera/feature/funvideo/mode/FunVideoARThread;

    .line 22
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 24
    :cond_0
    sget-object v0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoARThread;->mARStickerThread:Lcom/transsion/camera/feature/funvideo/mode/FunVideoARThread;

    return-object v0
.end method


# virtual methods
.method public getmFunVideoARCache()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/faceunity/entity/Effect;",
            ">;"
        }
    .end annotation

    .line 28
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoARThread;->mFunVideoARCache:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v0, :cond_0

    .line 29
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoARThread;->mFunVideoARCache:Ljava/util/concurrent/ConcurrentHashMap;

    .line 31
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoARThread;->mFunVideoARCache:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method
