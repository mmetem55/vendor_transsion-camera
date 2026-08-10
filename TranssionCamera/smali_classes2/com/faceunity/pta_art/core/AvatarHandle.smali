.class public Lcom/faceunity/pta_art/core/AvatarHandle;
.super Lcom/faceunity/pta_art/core/base/BasePTAHandle;
.source "AvatarHandle.java"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final beardItem:Lcom/faceunity/pta_art/core/base/FUItem;

.field private final bodyItem:Lcom/faceunity/pta_art/core/base/FUItem;

.field private final clothesItem:Lcom/faceunity/pta_art/core/base/FUItem;

.field private volatile executeCompleted:Z

.field private final expressionItem:Lcom/faceunity/pta_art/core/base/FUItem;

.field private final eyebrowItem:Lcom/faceunity/pta_art/core/base/FUItem;

.field private final eyelashItem:Lcom/faceunity/pta_art/core/base/FUItem;

.field private final facemakeItem:Lcom/faceunity/pta_art/core/base/FUItem;

.field private final glassItem:Lcom/faceunity/pta_art/core/base/FUItem;

.field private final hairItem:Lcom/faceunity/pta_art/core/base/FUItem;

.field private final hatItem:Lcom/faceunity/pta_art/core/base/FUItem;

.field private final headItem:Lcom/faceunity/pta_art/core/base/FUItem;

.field private isMaskItemNUnBind:Z

.field private final mISoundPlayer:Lcom/transsion/camera/feature/arcore/manager/ISoundPlayer;

.field private final maskItemN:Lcom/faceunity/pta_art/core/base/FUItem;

.field private final otherItem:[Lcom/faceunity/pta_art/core/base/FUItem;

.field private final pupilItem:Lcom/faceunity/pta_art/core/base/FUItem;

.field private final shoeItem:Lcom/faceunity/pta_art/core/base/FUItem;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 20
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "AvatarHandle"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/faceunity/pta_art/core/AvatarHandle;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/faceunity/pta_art/core/base/BaseCore;Lcom/faceunity/pta_art/core/base/FUItemHandler;Ljava/lang/Runnable;Lcom/transsion/camera/feature/arcore/manager/ISoundPlayer;)V
    .locals 7

    .line 49
    invoke-direct {p0, p1, p2}, Lcom/faceunity/pta_art/core/base/BasePTAHandle;-><init>(Lcom/faceunity/pta_art/core/base/BaseCore;Lcom/faceunity/pta_art/core/base/FUItemHandler;)V

    .line 22
    new-instance p1, Lcom/faceunity/pta_art/core/base/FUItem;

    invoke-direct {p1}, Lcom/faceunity/pta_art/core/base/FUItem;-><init>()V

    iput-object p1, p0, Lcom/faceunity/pta_art/core/AvatarHandle;->headItem:Lcom/faceunity/pta_art/core/base/FUItem;

    .line 23
    new-instance p1, Lcom/faceunity/pta_art/core/base/FUItem;

    invoke-direct {p1}, Lcom/faceunity/pta_art/core/base/FUItem;-><init>()V

    iput-object p1, p0, Lcom/faceunity/pta_art/core/AvatarHandle;->hairItem:Lcom/faceunity/pta_art/core/base/FUItem;

    .line 24
    new-instance p1, Lcom/faceunity/pta_art/core/base/FUItem;

    invoke-direct {p1}, Lcom/faceunity/pta_art/core/base/FUItem;-><init>()V

    iput-object p1, p0, Lcom/faceunity/pta_art/core/AvatarHandle;->glassItem:Lcom/faceunity/pta_art/core/base/FUItem;

    .line 25
    new-instance p1, Lcom/faceunity/pta_art/core/base/FUItem;

    invoke-direct {p1}, Lcom/faceunity/pta_art/core/base/FUItem;-><init>()V

    iput-object p1, p0, Lcom/faceunity/pta_art/core/AvatarHandle;->beardItem:Lcom/faceunity/pta_art/core/base/FUItem;

    .line 26
    new-instance p1, Lcom/faceunity/pta_art/core/base/FUItem;

    invoke-direct {p1}, Lcom/faceunity/pta_art/core/base/FUItem;-><init>()V

    iput-object p1, p0, Lcom/faceunity/pta_art/core/AvatarHandle;->eyebrowItem:Lcom/faceunity/pta_art/core/base/FUItem;

    .line 27
    new-instance p1, Lcom/faceunity/pta_art/core/base/FUItem;

    invoke-direct {p1}, Lcom/faceunity/pta_art/core/base/FUItem;-><init>()V

    iput-object p1, p0, Lcom/faceunity/pta_art/core/AvatarHandle;->pupilItem:Lcom/faceunity/pta_art/core/base/FUItem;

    .line 28
    new-instance p1, Lcom/faceunity/pta_art/core/base/FUItem;

    invoke-direct {p1}, Lcom/faceunity/pta_art/core/base/FUItem;-><init>()V

    iput-object p1, p0, Lcom/faceunity/pta_art/core/AvatarHandle;->facemakeItem:Lcom/faceunity/pta_art/core/base/FUItem;

    .line 29
    new-instance p1, Lcom/faceunity/pta_art/core/base/FUItem;

    invoke-direct {p1}, Lcom/faceunity/pta_art/core/base/FUItem;-><init>()V

    iput-object p1, p0, Lcom/faceunity/pta_art/core/AvatarHandle;->eyelashItem:Lcom/faceunity/pta_art/core/base/FUItem;

    .line 30
    new-instance p1, Lcom/faceunity/pta_art/core/base/FUItem;

    invoke-direct {p1}, Lcom/faceunity/pta_art/core/base/FUItem;-><init>()V

    iput-object p1, p0, Lcom/faceunity/pta_art/core/AvatarHandle;->hatItem:Lcom/faceunity/pta_art/core/base/FUItem;

    .line 31
    new-instance p1, Lcom/faceunity/pta_art/core/base/FUItem;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Lcom/faceunity/pta_art/core/base/FUItem;-><init>(Z)V

    iput-object p1, p0, Lcom/faceunity/pta_art/core/AvatarHandle;->bodyItem:Lcom/faceunity/pta_art/core/base/FUItem;

    .line 32
    new-instance p1, Lcom/faceunity/pta_art/core/base/FUItem;

    invoke-direct {p1, p2}, Lcom/faceunity/pta_art/core/base/FUItem;-><init>(Z)V

    iput-object p1, p0, Lcom/faceunity/pta_art/core/AvatarHandle;->clothesItem:Lcom/faceunity/pta_art/core/base/FUItem;

    .line 33
    new-instance p1, Lcom/faceunity/pta_art/core/base/FUItem;

    invoke-direct {p1, p2}, Lcom/faceunity/pta_art/core/base/FUItem;-><init>(Z)V

    iput-object p1, p0, Lcom/faceunity/pta_art/core/AvatarHandle;->shoeItem:Lcom/faceunity/pta_art/core/base/FUItem;

    .line 34
    new-instance p1, Lcom/faceunity/pta_art/core/base/FUItem;

    invoke-direct {p1, p2}, Lcom/faceunity/pta_art/core/base/FUItem;-><init>(Z)V

    iput-object p1, p0, Lcom/faceunity/pta_art/core/AvatarHandle;->maskItemN:Lcom/faceunity/pta_art/core/base/FUItem;

    .line 35
    new-instance p1, Lcom/faceunity/pta_art/core/base/FUItem;

    invoke-direct {p1}, Lcom/faceunity/pta_art/core/base/FUItem;-><init>()V

    iput-object p1, p0, Lcom/faceunity/pta_art/core/AvatarHandle;->expressionItem:Lcom/faceunity/pta_art/core/base/FUItem;

    const/4 p1, 0x5

    new-array p1, p1, [Lcom/faceunity/pta_art/core/base/FUItem;

    .line 36
    iput-object p1, p0, Lcom/faceunity/pta_art/core/AvatarHandle;->otherItem:[Lcom/faceunity/pta_art/core/base/FUItem;

    const/4 p1, 0x0

    .line 38
    iput-boolean p1, p0, Lcom/faceunity/pta_art/core/AvatarHandle;->isMaskItemNUnBind:Z

    move p2, p1

    .line 41
    :goto_0
    iget-object v0, p0, Lcom/faceunity/pta_art/core/AvatarHandle;->otherItem:[Lcom/faceunity/pta_art/core/base/FUItem;

    array-length v1, v0

    if-ge p2, v1, :cond_0

    .line 42
    new-instance v1, Lcom/faceunity/pta_art/core/base/FUItem;

    invoke-direct {v1}, Lcom/faceunity/pta_art/core/base/FUItem;-><init>()V

    aput-object v1, v0, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 238
    :cond_0
    iput-boolean p1, p0, Lcom/faceunity/pta_art/core/AvatarHandle;->executeCompleted:Z

    .line 50
    iput-object p4, p0, Lcom/faceunity/pta_art/core/AvatarHandle;->mISoundPlayer:Lcom/transsion/camera/feature/arcore/manager/ISoundPlayer;

    .line 51
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 52
    iget-object p2, p0, Lcom/faceunity/pta_art/core/base/BaseHandle;->mFUItemHandler:Lcom/faceunity/pta_art/core/base/FUItemHandler;

    iget p4, p0, Lcom/faceunity/pta_art/core/base/BasePTAHandle;->FUItemHandler_what_controller:I

    new-instance v6, Lcom/faceunity/pta_art/core/AvatarHandle$1;

    invoke-static {p1}, Lcom/faceunity/pta_art/constant/ResourceJson;->bundleController(I)Ljava/lang/String;

    move-result-object v2

    move-object v0, v6

    move-object v1, p0

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/faceunity/pta_art/core/AvatarHandle$1;-><init>(Lcom/faceunity/pta_art/core/AvatarHandle;Ljava/lang/String;JLjava/lang/Runnable;)V

    invoke-virtual {p2, p4, v6}, Lcom/faceunity/pta_art/core/base/FUItemHandler;->loadFUItem(ILcom/faceunity/pta_art/core/base/FUItemHandler$LoadFUItemListener;)V

    return-void
.end method

.method static synthetic access$000()Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 1

    .line 19
    sget-object v0, Lcom/faceunity/pta_art/core/AvatarHandle;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/faceunity/pta_art/core/AvatarHandle;Lcom/faceunity/pta_art/core/base/FUItem;Ljava/lang/String;)V
    .locals 0

    .line 19
    invoke-virtual {p0, p1, p2}, Lcom/faceunity/pta_art/core/base/BasePTAHandle;->loadItem(Lcom/faceunity/pta_art/core/base/FUItem;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$102(Lcom/faceunity/pta_art/core/AvatarHandle;I)I
    .locals 0

    .line 19
    iput p1, p0, Lcom/faceunity/pta_art/core/base/BasePTAHandle;->controllerItem:I

    return p1
.end method

.method static synthetic access$1100(Lcom/faceunity/pta_art/core/AvatarHandle;)Lcom/faceunity/pta_art/core/base/FUItem;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/faceunity/pta_art/core/AvatarHandle;->eyebrowItem:Lcom/faceunity/pta_art/core/base/FUItem;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/faceunity/pta_art/core/AvatarHandle;Lcom/faceunity/pta_art/core/base/FUItem;Ljava/lang/String;)V
    .locals 0

    .line 19
    invoke-virtual {p0, p1, p2}, Lcom/faceunity/pta_art/core/base/BasePTAHandle;->loadItem(Lcom/faceunity/pta_art/core/base/FUItem;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/faceunity/pta_art/core/AvatarHandle;)Lcom/faceunity/pta_art/core/base/FUItem;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/faceunity/pta_art/core/AvatarHandle;->eyelashItem:Lcom/faceunity/pta_art/core/base/FUItem;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/faceunity/pta_art/core/AvatarHandle;Lcom/faceunity/pta_art/core/base/FUItem;Ljava/lang/String;)V
    .locals 0

    .line 19
    invoke-virtual {p0, p1, p2}, Lcom/faceunity/pta_art/core/base/BasePTAHandle;->loadItem(Lcom/faceunity/pta_art/core/base/FUItem;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/faceunity/pta_art/core/AvatarHandle;)Lcom/faceunity/pta_art/core/base/FUItem;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/faceunity/pta_art/core/AvatarHandle;->pupilItem:Lcom/faceunity/pta_art/core/base/FUItem;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/faceunity/pta_art/core/AvatarHandle;Lcom/faceunity/pta_art/core/base/FUItem;Ljava/lang/String;)V
    .locals 0

    .line 19
    invoke-virtual {p0, p1, p2}, Lcom/faceunity/pta_art/core/base/BasePTAHandle;->loadItem(Lcom/faceunity/pta_art/core/base/FUItem;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/faceunity/pta_art/core/AvatarHandle;)Lcom/faceunity/pta_art/core/base/FUItem;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/faceunity/pta_art/core/AvatarHandle;->facemakeItem:Lcom/faceunity/pta_art/core/base/FUItem;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/faceunity/pta_art/core/AvatarHandle;Lcom/faceunity/pta_art/core/base/FUItem;Ljava/lang/String;)V
    .locals 0

    .line 19
    invoke-virtual {p0, p1, p2}, Lcom/faceunity/pta_art/core/base/BasePTAHandle;->loadItem(Lcom/faceunity/pta_art/core/base/FUItem;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/faceunity/pta_art/core/AvatarHandle;)Lcom/faceunity/pta_art/core/base/FUItem;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/faceunity/pta_art/core/AvatarHandle;->hatItem:Lcom/faceunity/pta_art/core/base/FUItem;

    return-object p0
.end method

.method static synthetic access$200(Lcom/faceunity/pta_art/core/AvatarHandle;)Lcom/faceunity/pta_art/core/base/BaseCore;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/faceunity/pta_art/core/base/BaseHandle;->mBaseCore:Lcom/faceunity/pta_art/core/base/BaseCore;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/faceunity/pta_art/core/AvatarHandle;Lcom/faceunity/pta_art/core/base/FUItem;Ljava/lang/String;)V
    .locals 0

    .line 19
    invoke-virtual {p0, p1, p2}, Lcom/faceunity/pta_art/core/base/BasePTAHandle;->loadItem(Lcom/faceunity/pta_art/core/base/FUItem;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/faceunity/pta_art/core/AvatarHandle;)Lcom/faceunity/pta_art/core/base/FUItem;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/faceunity/pta_art/core/AvatarHandle;->bodyItem:Lcom/faceunity/pta_art/core/base/FUItem;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/faceunity/pta_art/core/AvatarHandle;Lcom/faceunity/pta_art/core/base/FUItem;Ljava/lang/String;Z)V
    .locals 0

    .line 19
    invoke-virtual {p0, p1, p2, p3}, Lcom/faceunity/pta_art/core/base/BasePTAHandle;->loadItem(Lcom/faceunity/pta_art/core/base/FUItem;Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$2300(Lcom/faceunity/pta_art/core/AvatarHandle;)Lcom/faceunity/pta_art/core/base/FUItem;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/faceunity/pta_art/core/AvatarHandle;->clothesItem:Lcom/faceunity/pta_art/core/base/FUItem;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/faceunity/pta_art/core/AvatarHandle;Lcom/faceunity/pta_art/core/base/FUItem;Ljava/lang/String;Z)V
    .locals 0

    .line 19
    invoke-virtual {p0, p1, p2, p3}, Lcom/faceunity/pta_art/core/base/BasePTAHandle;->loadItem(Lcom/faceunity/pta_art/core/base/FUItem;Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$2500(Lcom/faceunity/pta_art/core/AvatarHandle;)Lcom/faceunity/pta_art/core/base/FUItem;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/faceunity/pta_art/core/AvatarHandle;->shoeItem:Lcom/faceunity/pta_art/core/base/FUItem;

    return-object p0
.end method

.method static synthetic access$2600(Lcom/faceunity/pta_art/core/AvatarHandle;Lcom/faceunity/pta_art/core/base/FUItem;Ljava/lang/String;Z)V
    .locals 0

    .line 19
    invoke-virtual {p0, p1, p2, p3}, Lcom/faceunity/pta_art/core/base/BasePTAHandle;->loadItem(Lcom/faceunity/pta_art/core/base/FUItem;Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$2700(Lcom/faceunity/pta_art/core/AvatarHandle;)Lcom/faceunity/pta_art/core/base/FUItem;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/faceunity/pta_art/core/AvatarHandle;->maskItemN:Lcom/faceunity/pta_art/core/base/FUItem;

    return-object p0
.end method

.method static synthetic access$2800(Lcom/faceunity/pta_art/core/AvatarHandle;Lcom/faceunity/pta_art/core/base/FUItem;Ljava/lang/String;Z)V
    .locals 0

    .line 19
    invoke-virtual {p0, p1, p2, p3}, Lcom/faceunity/pta_art/core/base/BasePTAHandle;->loadItem(Lcom/faceunity/pta_art/core/base/FUItem;Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$2900(Lcom/faceunity/pta_art/core/AvatarHandle;)[Lcom/faceunity/pta_art/core/base/FUItem;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/faceunity/pta_art/core/AvatarHandle;->otherItem:[Lcom/faceunity/pta_art/core/base/FUItem;

    return-object p0
.end method

.method static synthetic access$300(Lcom/faceunity/pta_art/core/AvatarHandle;)Lcom/faceunity/pta_art/core/base/FUItem;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/faceunity/pta_art/core/AvatarHandle;->headItem:Lcom/faceunity/pta_art/core/base/FUItem;

    return-object p0
.end method

.method static synthetic access$3000(Lcom/faceunity/pta_art/core/AvatarHandle;Lcom/faceunity/pta_art/core/base/FUItem;Ljava/lang/String;Z)V
    .locals 0

    .line 19
    invoke-virtual {p0, p1, p2, p3}, Lcom/faceunity/pta_art/core/base/BasePTAHandle;->loadItem(Lcom/faceunity/pta_art/core/base/FUItem;Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$3100(Lcom/faceunity/pta_art/core/AvatarHandle;)Lcom/faceunity/pta_art/core/base/FUItem;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/faceunity/pta_art/core/AvatarHandle;->expressionItem:Lcom/faceunity/pta_art/core/base/FUItem;

    return-object p0
.end method

.method static synthetic access$3200(Lcom/faceunity/pta_art/core/AvatarHandle;Lcom/faceunity/pta_art/core/base/FUItem;Ljava/lang/String;)V
    .locals 0

    .line 19
    invoke-virtual {p0, p1, p2}, Lcom/faceunity/pta_art/core/base/BasePTAHandle;->loadItem(Lcom/faceunity/pta_art/core/base/FUItem;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3300(Lcom/faceunity/pta_art/core/AvatarHandle;Lcom/faceunity/pta_art/core/base/FUItem;Ljava/lang/String;)V
    .locals 0

    .line 19
    invoke-virtual {p0, p1, p2}, Lcom/faceunity/pta_art/core/base/BasePTAHandle;->loadItem(Lcom/faceunity/pta_art/core/base/FUItem;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3400(Lcom/faceunity/pta_art/core/AvatarHandle;)I
    .locals 0

    .line 19
    iget p0, p0, Lcom/faceunity/pta_art/core/base/BasePTAHandle;->controllerItem:I

    return p0
.end method

.method static synthetic access$3500(Lcom/faceunity/pta_art/core/AvatarHandle;)Lcom/faceunity/pta_art/core/base/BaseCore;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/faceunity/pta_art/core/base/BaseHandle;->mBaseCore:Lcom/faceunity/pta_art/core/base/BaseCore;

    return-object p0
.end method

.method static synthetic access$3600(Lcom/faceunity/pta_art/core/AvatarHandle;)Lcom/transsion/camera/feature/arcore/manager/ISoundPlayer;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/faceunity/pta_art/core/AvatarHandle;->mISoundPlayer:Lcom/transsion/camera/feature/arcore/manager/ISoundPlayer;

    return-object p0
.end method

.method static synthetic access$3700(Lcom/faceunity/pta_art/core/AvatarHandle;)Lcom/faceunity/pta_art/core/base/BaseCore;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/faceunity/pta_art/core/base/BaseHandle;->mBaseCore:Lcom/faceunity/pta_art/core/base/BaseCore;

    return-object p0
.end method

.method static synthetic access$3800(Lcom/faceunity/pta_art/core/AvatarHandle;Lcom/faceunity/pta_art/entity/AvatarPTA;)V
    .locals 0

    .line 19
    invoke-virtual {p0, p1}, Lcom/faceunity/pta_art/core/base/BasePTAHandle;->commitItem(Lcom/faceunity/pta_art/entity/AvatarPTA;)V

    return-void
.end method

.method static synthetic access$3900(Lcom/faceunity/pta_art/core/AvatarHandle;)Lcom/faceunity/pta_art/core/base/BaseCore;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/faceunity/pta_art/core/base/BaseHandle;->mBaseCore:Lcom/faceunity/pta_art/core/base/BaseCore;

    return-object p0
.end method

.method static synthetic access$400(Lcom/faceunity/pta_art/core/AvatarHandle;Lcom/faceunity/pta_art/core/base/FUItem;Ljava/lang/String;)V
    .locals 0

    .line 19
    invoke-virtual {p0, p1, p2}, Lcom/faceunity/pta_art/core/base/BasePTAHandle;->loadItem(Lcom/faceunity/pta_art/core/base/FUItem;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/faceunity/pta_art/core/AvatarHandle;)Lcom/faceunity/pta_art/core/base/FUItem;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/faceunity/pta_art/core/AvatarHandle;->hairItem:Lcom/faceunity/pta_art/core/base/FUItem;

    return-object p0
.end method

.method static synthetic access$600(Lcom/faceunity/pta_art/core/AvatarHandle;Lcom/faceunity/pta_art/core/base/FUItem;Ljava/lang/String;)V
    .locals 0

    .line 19
    invoke-virtual {p0, p1, p2}, Lcom/faceunity/pta_art/core/base/BasePTAHandle;->loadItem(Lcom/faceunity/pta_art/core/base/FUItem;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/faceunity/pta_art/core/AvatarHandle;)Lcom/faceunity/pta_art/core/base/FUItem;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/faceunity/pta_art/core/AvatarHandle;->glassItem:Lcom/faceunity/pta_art/core/base/FUItem;

    return-object p0
.end method

.method static synthetic access$800(Lcom/faceunity/pta_art/core/AvatarHandle;Lcom/faceunity/pta_art/core/base/FUItem;Ljava/lang/String;)V
    .locals 0

    .line 19
    invoke-virtual {p0, p1, p2}, Lcom/faceunity/pta_art/core/base/BasePTAHandle;->loadItem(Lcom/faceunity/pta_art/core/base/FUItem;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/faceunity/pta_art/core/AvatarHandle;)Lcom/faceunity/pta_art/core/base/FUItem;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/faceunity/pta_art/core/AvatarHandle;->beardItem:Lcom/faceunity/pta_art/core/base/FUItem;

    return-object p0
.end method

.method private destoryAllLocalItems()V
    .locals 4

    .line 150
    iget-object v0, p0, Lcom/faceunity/pta_art/core/AvatarHandle;->headItem:Lcom/faceunity/pta_art/core/base/FUItem;

    invoke-direct {p0, v0}, Lcom/faceunity/pta_art/core/AvatarHandle;->destoryItem(Lcom/faceunity/pta_art/core/base/FUItem;)V

    .line 151
    iget-object v0, p0, Lcom/faceunity/pta_art/core/AvatarHandle;->hairItem:Lcom/faceunity/pta_art/core/base/FUItem;

    invoke-direct {p0, v0}, Lcom/faceunity/pta_art/core/AvatarHandle;->destoryItem(Lcom/faceunity/pta_art/core/base/FUItem;)V

    .line 152
    iget-object v0, p0, Lcom/faceunity/pta_art/core/AvatarHandle;->glassItem:Lcom/faceunity/pta_art/core/base/FUItem;

    invoke-direct {p0, v0}, Lcom/faceunity/pta_art/core/AvatarHandle;->destoryItem(Lcom/faceunity/pta_art/core/base/FUItem;)V

    .line 153
    iget-object v0, p0, Lcom/faceunity/pta_art/core/AvatarHandle;->beardItem:Lcom/faceunity/pta_art/core/base/FUItem;

    invoke-direct {p0, v0}, Lcom/faceunity/pta_art/core/AvatarHandle;->destoryItem(Lcom/faceunity/pta_art/core/base/FUItem;)V

    .line 154
    iget-object v0, p0, Lcom/faceunity/pta_art/core/AvatarHandle;->eyebrowItem:Lcom/faceunity/pta_art/core/base/FUItem;

    invoke-direct {p0, v0}, Lcom/faceunity/pta_art/core/AvatarHandle;->destoryItem(Lcom/faceunity/pta_art/core/base/FUItem;)V

    .line 155
    iget-object v0, p0, Lcom/faceunity/pta_art/core/AvatarHandle;->pupilItem:Lcom/faceunity/pta_art/core/base/FUItem;

    invoke-direct {p0, v0}, Lcom/faceunity/pta_art/core/AvatarHandle;->destoryItem(Lcom/faceunity/pta_art/core/base/FUItem;)V

    .line 156
    iget-object v0, p0, Lcom/faceunity/pta_art/core/AvatarHandle;->facemakeItem:Lcom/faceunity/pta_art/core/base/FUItem;

    invoke-direct {p0, v0}, Lcom/faceunity/pta_art/core/AvatarHandle;->destoryItem(Lcom/faceunity/pta_art/core/base/FUItem;)V

    .line 157
    iget-object v0, p0, Lcom/faceunity/pta_art/core/AvatarHandle;->eyelashItem:Lcom/faceunity/pta_art/core/base/FUItem;

    invoke-direct {p0, v0}, Lcom/faceunity/pta_art/core/AvatarHandle;->destoryItem(Lcom/faceunity/pta_art/core/base/FUItem;)V

    .line 158
    iget-object v0, p0, Lcom/faceunity/pta_art/core/AvatarHandle;->hatItem:Lcom/faceunity/pta_art/core/base/FUItem;

    invoke-direct {p0, v0}, Lcom/faceunity/pta_art/core/AvatarHandle;->destoryItem(Lcom/faceunity/pta_art/core/base/FUItem;)V

    .line 159
    iget-object v0, p0, Lcom/faceunity/pta_art/core/AvatarHandle;->bodyItem:Lcom/faceunity/pta_art/core/base/FUItem;

    invoke-direct {p0, v0}, Lcom/faceunity/pta_art/core/AvatarHandle;->destoryItem(Lcom/faceunity/pta_art/core/base/FUItem;)V

    .line 160
    iget-object v0, p0, Lcom/faceunity/pta_art/core/AvatarHandle;->clothesItem:Lcom/faceunity/pta_art/core/base/FUItem;

    invoke-direct {p0, v0}, Lcom/faceunity/pta_art/core/AvatarHandle;->destoryItem(Lcom/faceunity/pta_art/core/base/FUItem;)V

    .line 161
    iget-object v0, p0, Lcom/faceunity/pta_art/core/AvatarHandle;->shoeItem:Lcom/faceunity/pta_art/core/base/FUItem;

    invoke-direct {p0, v0}, Lcom/faceunity/pta_art/core/AvatarHandle;->destoryItem(Lcom/faceunity/pta_art/core/base/FUItem;)V

    .line 162
    iget-object v0, p0, Lcom/faceunity/pta_art/core/AvatarHandle;->expressionItem:Lcom/faceunity/pta_art/core/base/FUItem;

    invoke-direct {p0, v0}, Lcom/faceunity/pta_art/core/AvatarHandle;->destoryItem(Lcom/faceunity/pta_art/core/base/FUItem;)V

    .line 163
    iget-object v0, p0, Lcom/faceunity/pta_art/core/AvatarHandle;->maskItemN:Lcom/faceunity/pta_art/core/base/FUItem;

    invoke-direct {p0, v0}, Lcom/faceunity/pta_art/core/AvatarHandle;->destoryItem(Lcom/faceunity/pta_art/core/base/FUItem;)V

    .line 164
    iget-object v0, p0, Lcom/faceunity/pta_art/core/AvatarHandle;->otherItem:[Lcom/faceunity/pta_art/core/base/FUItem;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 165
    invoke-direct {p0, v3}, Lcom/faceunity/pta_art/core/AvatarHandle;->destoryItem(Lcom/faceunity/pta_art/core/base/FUItem;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private destoryItem(Lcom/faceunity/pta_art/core/base/FUItem;)V
    .locals 0

    .line 143
    iget p0, p1, Lcom/faceunity/pta_art/core/base/FUItem;->handle:I

    if-lez p0, :cond_0

    .line 144
    invoke-static {p0}, Lcom/faceunity/wrapper/faceunity;->fuDestroyItem(I)V

    .line 146
    :cond_0
    invoke-virtual {p1}, Lcom/faceunity/pta_art/core/base/FUItem;->clear()V

    return-void
.end method

.method private unbindAllLocalItems()V
    .locals 6

    .line 206
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 207
    iget-object v1, p0, Lcom/faceunity/pta_art/core/AvatarHandle;->headItem:Lcom/faceunity/pta_art/core/base/FUItem;

    iget v1, v1, Lcom/faceunity/pta_art/core/base/FUItem;->handle:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 208
    iget-object v1, p0, Lcom/faceunity/pta_art/core/AvatarHandle;->hairItem:Lcom/faceunity/pta_art/core/base/FUItem;

    iget v1, v1, Lcom/faceunity/pta_art/core/base/FUItem;->handle:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 209
    iget-object v1, p0, Lcom/faceunity/pta_art/core/AvatarHandle;->glassItem:Lcom/faceunity/pta_art/core/base/FUItem;

    iget v1, v1, Lcom/faceunity/pta_art/core/base/FUItem;->handle:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 210
    iget-object v1, p0, Lcom/faceunity/pta_art/core/AvatarHandle;->beardItem:Lcom/faceunity/pta_art/core/base/FUItem;

    iget v1, v1, Lcom/faceunity/pta_art/core/base/FUItem;->handle:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 211
    iget-object v1, p0, Lcom/faceunity/pta_art/core/AvatarHandle;->eyebrowItem:Lcom/faceunity/pta_art/core/base/FUItem;

    iget v1, v1, Lcom/faceunity/pta_art/core/base/FUItem;->handle:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 212
    iget-object v1, p0, Lcom/faceunity/pta_art/core/AvatarHandle;->pupilItem:Lcom/faceunity/pta_art/core/base/FUItem;

    iget v1, v1, Lcom/faceunity/pta_art/core/base/FUItem;->handle:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 213
    iget-object v1, p0, Lcom/faceunity/pta_art/core/AvatarHandle;->facemakeItem:Lcom/faceunity/pta_art/core/base/FUItem;

    iget v1, v1, Lcom/faceunity/pta_art/core/base/FUItem;->handle:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 214
    iget-object v1, p0, Lcom/faceunity/pta_art/core/AvatarHandle;->eyelashItem:Lcom/faceunity/pta_art/core/base/FUItem;

    iget v1, v1, Lcom/faceunity/pta_art/core/base/FUItem;->handle:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 215
    iget-object v1, p0, Lcom/faceunity/pta_art/core/AvatarHandle;->hatItem:Lcom/faceunity/pta_art/core/base/FUItem;

    iget v1, v1, Lcom/faceunity/pta_art/core/base/FUItem;->handle:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 216
    iget-object v1, p0, Lcom/faceunity/pta_art/core/AvatarHandle;->bodyItem:Lcom/faceunity/pta_art/core/base/FUItem;

    iget v1, v1, Lcom/faceunity/pta_art/core/base/FUItem;->handle:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 217
    iget-object v1, p0, Lcom/faceunity/pta_art/core/AvatarHandle;->clothesItem:Lcom/faceunity/pta_art/core/base/FUItem;

    iget v1, v1, Lcom/faceunity/pta_art/core/base/FUItem;->handle:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 218
    iget-object v1, p0, Lcom/faceunity/pta_art/core/AvatarHandle;->maskItemN:Lcom/faceunity/pta_art/core/base/FUItem;

    iget v1, v1, Lcom/faceunity/pta_art/core/base/FUItem;->handle:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 219
    iget-object v1, p0, Lcom/faceunity/pta_art/core/AvatarHandle;->shoeItem:Lcom/faceunity/pta_art/core/base/FUItem;

    iget v1, v1, Lcom/faceunity/pta_art/core/base/FUItem;->handle:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 220
    iget-object v1, p0, Lcom/faceunity/pta_art/core/AvatarHandle;->expressionItem:Lcom/faceunity/pta_art/core/base/FUItem;

    iget v1, v1, Lcom/faceunity/pta_art/core/base/FUItem;->handle:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 221
    iget-object v1, p0, Lcom/faceunity/pta_art/core/AvatarHandle;->otherItem:[Lcom/faceunity/pta_art/core/base/FUItem;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_0

    aget-object v5, v1, v4

    .line 222
    iget v5, v5, Lcom/faceunity/pta_art/core/base/FUItem;->handle:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 224
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [I

    .line 225
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v3, v2, :cond_1

    .line 226
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 228
    :cond_1
    iget p0, p0, Lcom/faceunity/pta_art/core/base/BasePTAHandle;->controllerItem:I

    invoke-static {p0, v1}, Lcom/faceunity/wrapper/faceunity;->fuUnBindItems(I[I)I

    return-void
.end method


# virtual methods
.method public release()V
    .locals 0

    .line 234
    invoke-direct {p0}, Lcom/faceunity/pta_art/core/AvatarHandle;->unbindAllLocalItems()V

    .line 235
    invoke-direct {p0}, Lcom/faceunity/pta_art/core/AvatarHandle;->destoryAllLocalItems()V

    return-void
.end method

.method public setAvatar(Lcom/faceunity/pta_art/entity/AvatarPTA;ZILjava/lang/Runnable;)V
    .locals 9

    .line 66
    iget-object v0, p0, Lcom/faceunity/pta_art/core/base/BaseHandle;->mFUItemHandler:Lcom/faceunity/pta_art/core/base/FUItemHandler;

    sget v1, Lcom/faceunity/pta_art/core/base/BaseHandle;->FUItemHandler_what:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 67
    iget-object v0, p0, Lcom/faceunity/pta_art/core/base/BaseHandle;->mFUItemHandler:Lcom/faceunity/pta_art/core/base/FUItemHandler;

    new-instance v8, Lcom/faceunity/pta_art/core/AvatarHandle$2;

    move-object v2, v8

    move-object v3, p0

    move v4, p3

    move v5, p2

    move-object v6, p1

    move-object v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/faceunity/pta_art/core/AvatarHandle$2;-><init>(Lcom/faceunity/pta_art/core/AvatarHandle;IZLcom/faceunity/pta_art/entity/AvatarPTA;Ljava/lang/Runnable;)V

    invoke-static {v0, v8}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object p1

    .line 128
    iput v1, p1, Landroid/os/Message;->what:I

    .line 129
    iget-object p0, p0, Lcom/faceunity/pta_art/core/base/BaseHandle;->mFUItemHandler:Lcom/faceunity/pta_art/core/base/FUItemHandler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
