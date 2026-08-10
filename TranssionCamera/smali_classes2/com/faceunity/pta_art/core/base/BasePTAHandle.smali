.class public abstract Lcom/faceunity/pta_art/core/base/BasePTAHandle;
.super Lcom/faceunity/pta_art/core/base/BaseHandle;
.source "BasePTAHandle.java"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field protected final FUItemHandler_what_controller:I

.field protected controllerItem:I

.field private mAvatarP2A:Lcom/faceunity/pta_art/entity/AvatarPTA;

.field private final mBindEventQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Lcom/faceunity/pta_art/core/base/Task;",
            ">;"
        }
    .end annotation
.end field

.field private final mUnbindEventQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Lcom/faceunity/pta_art/core/base/Task;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 19
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "AvatarHandle"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/faceunity/pta_art/core/base/BasePTAHandle;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/faceunity/pta_art/core/base/BaseCore;Lcom/faceunity/pta_art/core/base/FUItemHandler;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2}, Lcom/faceunity/pta_art/core/base/BaseHandle;-><init>(Lcom/faceunity/pta_art/core/base/BaseCore;Lcom/faceunity/pta_art/core/base/FUItemHandler;)V

    .line 33
    invoke-static {}, Lcom/faceunity/pta_art/core/base/FUItemHandler;->generateWhatIndex()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/faceunity/pta_art/core/base/BasePTAHandle;->FUItemHandler_what_controller:I

    .line 42
    new-instance p1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object p1, p0, Lcom/faceunity/pta_art/core/base/BasePTAHandle;->mUnbindEventQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 43
    new-instance p1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object p1, p0, Lcom/faceunity/pta_art/core/base/BasePTAHandle;->mBindEventQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-void
.end method

.method private setAvatarColor()V
    .locals 7

    .line 108
    iget-object v0, p0, Lcom/faceunity/pta_art/core/base/BasePTAHandle;->mAvatarP2A:Lcom/faceunity/pta_art/entity/AvatarPTA;

    if-nez v0, :cond_0

    return-void

    .line 111
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 112
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 114
    iget-object v1, p0, Lcom/faceunity/pta_art/core/base/BasePTAHandle;->mAvatarP2A:Lcom/faceunity/pta_art/entity/AvatarPTA;

    invoke-virtual {v1}, Lcom/faceunity/pta_art/entity/AvatarPTA;->getSkinColorValue()D

    move-result-wide v1

    .line 115
    sget-object v3, Lcom/faceunity/pta_art/core/base/BasePTAHandle;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "lily skinColor = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const-wide/16 v3, 0x0

    cmpl-double v5, v1, v3

    if-ltz v5, :cond_1

    .line 117
    new-instance v5, Lcom/transsion/camera/feature/arcore/common/core/FuItemParams;

    sget-object v6, Lcom/faceunity/pta_art/constant/ColorConstant;->skin_color:[[D

    invoke-static {v6, v1, v2}, Lcom/faceunity/pta_art/constant/ColorConstant;->getColor([[DD)[D

    move-result-object v1

    const-string v2, "skin_color"

    invoke-direct {v5, v2, v1}, Lcom/transsion/camera/feature/arcore/common/core/FuItemParams;-><init>(Ljava/lang/String;[D)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    :cond_1
    iget-object v1, p0, Lcom/faceunity/pta_art/core/base/BasePTAHandle;->mAvatarP2A:Lcom/faceunity/pta_art/entity/AvatarPTA;

    invoke-virtual {v1}, Lcom/faceunity/pta_art/entity/AvatarPTA;->getLipColorValue()D

    move-result-wide v1

    cmpl-double v1, v1, v3

    if-ltz v1, :cond_2

    .line 120
    new-instance v1, Lcom/transsion/camera/feature/arcore/common/core/FuItemParams;

    sget-object v2, Lcom/faceunity/pta_art/constant/ColorConstant;->lip_color:[[D

    iget-object v3, p0, Lcom/faceunity/pta_art/core/base/BasePTAHandle;->mAvatarP2A:Lcom/faceunity/pta_art/entity/AvatarPTA;

    invoke-virtual {v3}, Lcom/faceunity/pta_art/entity/AvatarPTA;->getLipColorValue()D

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/faceunity/pta_art/constant/ColorConstant;->getColor([[DD)[D

    move-result-object v2

    const-string v3, "lip_color"

    invoke-direct {v1, v3, v2}, Lcom/transsion/camera/feature/arcore/common/core/FuItemParams;-><init>(Ljava/lang/String;[D)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    :cond_2
    new-instance v1, Lcom/transsion/camera/feature/arcore/common/core/FuItemParams;

    sget-object v2, Lcom/faceunity/pta_art/constant/ColorConstant;->iris_color:[[D

    iget-object v3, p0, Lcom/faceunity/pta_art/core/base/BasePTAHandle;->mAvatarP2A:Lcom/faceunity/pta_art/entity/AvatarPTA;

    invoke-virtual {v3}, Lcom/faceunity/pta_art/entity/AvatarPTA;->getIrisColorValue()D

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/faceunity/pta_art/constant/ColorConstant;->getColor([[DD)[D

    move-result-object v2

    const-string v3, "iris_color"

    invoke-direct {v1, v3, v2}, Lcom/transsion/camera/feature/arcore/common/core/FuItemParams;-><init>(Ljava/lang/String;[D)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    sget-object v1, Lcom/faceunity/pta_art/constant/ColorConstant;->hair_color:[[D

    iget-object v2, p0, Lcom/faceunity/pta_art/core/base/BasePTAHandle;->mAvatarP2A:Lcom/faceunity/pta_art/entity/AvatarPTA;

    invoke-virtual {v2}, Lcom/faceunity/pta_art/entity/AvatarPTA;->getHairColorValue()D

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/faceunity/pta_art/constant/ColorConstant;->getColor([[DD)[D

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [D

    const/4 v3, 0x0

    .line 125
    sget-object v4, Lcom/faceunity/pta_art/constant/ColorConstant;->hair_color:[[D

    iget-object v5, p0, Lcom/faceunity/pta_art/core/base/BasePTAHandle;->mAvatarP2A:Lcom/faceunity/pta_art/entity/AvatarPTA;

    invoke-virtual {v5}, Lcom/faceunity/pta_art/entity/AvatarPTA;->getHairColorValue()D

    move-result-wide v5

    invoke-static {v4, v5, v6}, Lcom/faceunity/pta_art/constant/ColorConstant;->getColor([[DD)[D

    move-result-object v4

    const/4 v5, 0x3

    aget-wide v4, v4, v5

    aput-wide v4, v2, v3

    .line 126
    new-instance v3, Lcom/transsion/camera/feature/arcore/common/core/FuItemParams;

    const-string v4, "hair_color"

    invoke-direct {v3, v4, v1}, Lcom/transsion/camera/feature/arcore/common/core/FuItemParams;-><init>(Ljava/lang/String;[D)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    new-instance v1, Lcom/transsion/camera/feature/arcore/common/core/FuItemParams;

    const-string v3, "hair_color_intensity"

    invoke-direct {v1, v3, v2}, Lcom/transsion/camera/feature/arcore/common/core/FuItemParams;-><init>(Ljava/lang/String;[D)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    new-instance v1, Lcom/transsion/camera/feature/arcore/common/core/FuItemParams;

    sget-object v2, Lcom/faceunity/pta_art/constant/ColorConstant;->glass_color:[[D

    iget-object v3, p0, Lcom/faceunity/pta_art/core/base/BasePTAHandle;->mAvatarP2A:Lcom/faceunity/pta_art/entity/AvatarPTA;

    invoke-virtual {v3}, Lcom/faceunity/pta_art/entity/AvatarPTA;->getGlassesColorValue()D

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/faceunity/pta_art/constant/ColorConstant;->getColor([[DD)[D

    move-result-object v2

    const-string v3, "glass_color"

    invoke-direct {v1, v3, v2}, Lcom/transsion/camera/feature/arcore/common/core/FuItemParams;-><init>(Ljava/lang/String;[D)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    new-instance v1, Lcom/transsion/camera/feature/arcore/common/core/FuItemParams;

    sget-object v2, Lcom/faceunity/pta_art/constant/ColorConstant;->glass_frame_color:[[D

    iget-object v3, p0, Lcom/faceunity/pta_art/core/base/BasePTAHandle;->mAvatarP2A:Lcom/faceunity/pta_art/entity/AvatarPTA;

    invoke-virtual {v3}, Lcom/faceunity/pta_art/entity/AvatarPTA;->getGlassesFrameColorValue()D

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/faceunity/pta_art/constant/ColorConstant;->getColor([[DD)[D

    move-result-object v2

    const-string v3, "glass_frame_color"

    invoke-direct {v1, v3, v2}, Lcom/transsion/camera/feature/arcore/common/core/FuItemParams;-><init>(Ljava/lang/String;[D)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    new-instance v1, Lcom/transsion/camera/feature/arcore/common/core/FuItemParams;

    sget-object v2, Lcom/faceunity/pta_art/constant/ColorConstant;->beard_color:[[D

    iget-object v3, p0, Lcom/faceunity/pta_art/core/base/BasePTAHandle;->mAvatarP2A:Lcom/faceunity/pta_art/entity/AvatarPTA;

    invoke-virtual {v3}, Lcom/faceunity/pta_art/entity/AvatarPTA;->getBeardColorValue()D

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/faceunity/pta_art/constant/ColorConstant;->getColor([[DD)[D

    move-result-object v2

    const-string v3, "beard_color"

    invoke-direct {v1, v3, v2}, Lcom/transsion/camera/feature/arcore/common/core/FuItemParams;-><init>(Ljava/lang/String;[D)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    new-instance v1, Lcom/transsion/camera/feature/arcore/common/core/FuItemParams;

    sget-object v2, Lcom/faceunity/pta_art/constant/ColorConstant;->hat_color:[[D

    iget-object v3, p0, Lcom/faceunity/pta_art/core/base/BasePTAHandle;->mAvatarP2A:Lcom/faceunity/pta_art/entity/AvatarPTA;

    invoke-virtual {v3}, Lcom/faceunity/pta_art/entity/AvatarPTA;->getHatColorValue()D

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/faceunity/pta_art/constant/ColorConstant;->getColor([[DD)[D

    move-result-object v2

    const-string v3, "hat_color"

    invoke-direct {v1, v3, v2}, Lcom/transsion/camera/feature/arcore/common/core/FuItemParams;-><init>(Ljava/lang/String;[D)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 132
    iget-object v1, p0, Lcom/faceunity/pta_art/core/base/BaseHandle;->mBaseCore:Lcom/faceunity/pta_art/core/base/BaseCore;

    new-instance v2, Lcom/faceunity/pta_art/core/base/BasePTAHandle$1;

    const-string v3, "color"

    invoke-direct {v2, p0, v3, v0}, Lcom/faceunity/pta_art/core/base/BasePTAHandle$1;-><init>(Lcom/faceunity/pta_art/core/base/BasePTAHandle;Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Lcom/faceunity/pta_art/core/base/BaseCore;->queueEvent(Lcom/faceunity/pta_art/core/base/Task;)V

    return-void
.end method


# virtual methods
.method protected commitItem(Lcom/faceunity/pta_art/entity/AvatarPTA;)V
    .locals 1

    .line 99
    iput-object p1, p0, Lcom/faceunity/pta_art/core/base/BasePTAHandle;->mAvatarP2A:Lcom/faceunity/pta_art/entity/AvatarPTA;

    .line 100
    iget-object p1, p0, Lcom/faceunity/pta_art/core/base/BaseHandle;->mBaseCore:Lcom/faceunity/pta_art/core/base/BaseCore;

    iget-object v0, p0, Lcom/faceunity/pta_art/core/base/BasePTAHandle;->mUnbindEventQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p1, v0}, Lcom/faceunity/pta_art/core/base/BaseCore;->queueEvents(Ljava/util/concurrent/ConcurrentLinkedQueue;)V

    .line 101
    iget-object p1, p0, Lcom/faceunity/pta_art/core/base/BaseHandle;->mBaseCore:Lcom/faceunity/pta_art/core/base/BaseCore;

    iget-object v0, p0, Lcom/faceunity/pta_art/core/base/BasePTAHandle;->mBindEventQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p1, v0}, Lcom/faceunity/pta_art/core/base/BaseCore;->queueEvents(Ljava/util/concurrent/ConcurrentLinkedQueue;)V

    .line 102
    iget-object p1, p0, Lcom/faceunity/pta_art/core/base/BasePTAHandle;->mUnbindEventQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    .line 103
    iget-object p1, p0, Lcom/faceunity/pta_art/core/base/BasePTAHandle;->mBindEventQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    .line 104
    invoke-direct {p0}, Lcom/faceunity/pta_art/core/base/BasePTAHandle;->setAvatarColor()V

    return-void
.end method

.method public getControllerItem()I
    .locals 0

    .line 37
    iget p0, p0, Lcom/faceunity/pta_art/core/base/BasePTAHandle;->controllerItem:I

    return p0
.end method

.method protected loadItem(Lcom/faceunity/pta_art/core/base/FUItem;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 53
    invoke-virtual {p0, p1, p2, v0}, Lcom/faceunity/pta_art/core/base/BasePTAHandle;->loadItem(Lcom/faceunity/pta_art/core/base/FUItem;Ljava/lang/String;Z)V

    return-void
.end method

.method protected loadItem(Lcom/faceunity/pta_art/core/base/FUItem;Ljava/lang/String;Z)V
    .locals 8

    .line 57
    sget-object v0, Lcom/faceunity/pta_art/core/base/BasePTAHandle;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadItem fuItem  = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/faceunity/pta_art/core/base/FUItem;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  ;name = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",needToBind = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 59
    iget-object v0, p1, Lcom/faceunity/pta_art/core/base/FUItem;->name:Ljava/lang/String;

    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "itemBindEvents:"

    if-eqz v0, :cond_2

    iget v0, p1, Lcom/faceunity/pta_art/core/base/FUItem;->handle:I

    if-eqz v0, :cond_2

    .line 60
    iget-boolean p2, p1, Lcom/faceunity/pta_art/core/base/FUItem;->supportRebind:Z

    if-eqz p2, :cond_6

    .line 61
    iget-boolean p2, p1, Lcom/faceunity/pta_art/core/base/FUItem;->bindState:Z

    const/4 v0, 0x1

    if-eq p3, p2, :cond_0

    move p3, v0

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    if-eqz p3, :cond_6

    xor-int/2addr p2, v0

    if-eqz p2, :cond_1

    .line 65
    iget-object p3, p0, Lcom/faceunity/pta_art/core/base/BasePTAHandle;->mBindEventQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    iget-object v0, p0, Lcom/faceunity/pta_art/core/base/BaseHandle;->mBaseCore:Lcom/faceunity/pta_art/core/base/BaseCore;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/faceunity/pta_art/core/base/FUItem;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget p0, p0, Lcom/faceunity/pta_art/core/base/BasePTAHandle;->controllerItem:I

    iget v2, p1, Lcom/faceunity/pta_art/core/base/FUItem;->handle:I

    invoke-virtual {v0, v1, p0, v2}, Lcom/faceunity/pta_art/core/base/BaseCore;->itemBindRunnable(Ljava/lang/String;II)Lcom/faceunity/pta_art/core/base/Task;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 67
    :cond_1
    iget-object p3, p0, Lcom/faceunity/pta_art/core/base/BasePTAHandle;->mUnbindEventQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    iget-object v0, p0, Lcom/faceunity/pta_art/core/base/BaseHandle;->mBaseCore:Lcom/faceunity/pta_art/core/base/BaseCore;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "itemUnBindEvents:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/faceunity/pta_art/core/base/FUItem;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget p0, p0, Lcom/faceunity/pta_art/core/base/BasePTAHandle;->controllerItem:I

    iget v2, p1, Lcom/faceunity/pta_art/core/base/FUItem;->handle:I

    invoke-virtual {v0, v1, p0, v2}, Lcom/faceunity/pta_art/core/base/BaseCore;->itemUnBindRunnable(Ljava/lang/String;II)Lcom/faceunity/pta_art/core/base/Task;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 69
    :goto_1
    iput-boolean p2, p1, Lcom/faceunity/pta_art/core/base/FUItem;->bindState:Z

    goto/16 :goto_3

    .line 73
    :cond_2
    iget-object v0, p0, Lcom/faceunity/pta_art/core/base/BaseHandle;->mFUItemHandler:Lcom/faceunity/pta_art/core/base/FUItemHandler;

    invoke-virtual {v0, p2}, Lcom/faceunity/pta_art/core/base/FUItemHandler;->loadFUItem(Ljava/lang/String;)I

    move-result v0

    .line 74
    iget v2, p1, Lcom/faceunity/pta_art/core/base/FUItem;->handle:I

    const-string v3, "@"

    if-lez v2, :cond_3

    .line 75
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p1, Lcom/faceunity/pta_art/core/base/FUItem;->name:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Lcom/faceunity/pta_art/core/base/FUItem;->handle:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 76
    iget-object v4, p0, Lcom/faceunity/pta_art/core/base/BasePTAHandle;->mUnbindEventQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    iget-object v5, p0, Lcom/faceunity/pta_art/core/base/BaseHandle;->mBaseCore:Lcom/faceunity/pta_art/core/base/BaseCore;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "itemDestroyEvents:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget v6, p0, Lcom/faceunity/pta_art/core/base/BasePTAHandle;->controllerItem:I

    iget v7, p1, Lcom/faceunity/pta_art/core/base/FUItem;->handle:I

    invoke-virtual {v5, v2, v6, v7}, Lcom/faceunity/pta_art/core/base/BaseCore;->itemDestoryRunnable(Ljava/lang/String;II)Lcom/faceunity/pta_art/core/base/Task;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    :cond_3
    if-lez v0, :cond_5

    .line 79
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz p3, :cond_4

    .line 81
    iget-object v3, p0, Lcom/faceunity/pta_art/core/base/BasePTAHandle;->mBindEventQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    iget-object v4, p0, Lcom/faceunity/pta_art/core/base/BaseHandle;->mBaseCore:Lcom/faceunity/pta_art/core/base/BaseCore;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget p0, p0, Lcom/faceunity/pta_art/core/base/BasePTAHandle;->controllerItem:I

    invoke-virtual {v4, v1, p0, v0}, Lcom/faceunity/pta_art/core/base/BaseCore;->itemBindRunnable(Ljava/lang/String;II)Lcom/faceunity/pta_art/core/base/Task;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 83
    :cond_4
    iget-object v1, p0, Lcom/faceunity/pta_art/core/base/BasePTAHandle;->mUnbindEventQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    iget-object v3, p0, Lcom/faceunity/pta_art/core/base/BaseHandle;->mBaseCore:Lcom/faceunity/pta_art/core/base/BaseCore;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "itemUnbindEvents:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget p0, p0, Lcom/faceunity/pta_art/core/base/BasePTAHandle;->controllerItem:I

    invoke-virtual {v3, v2, p0, v0}, Lcom/faceunity/pta_art/core/base/BaseCore;->itemUnBindRunnable(Ljava/lang/String;II)Lcom/faceunity/pta_art/core/base/Task;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 86
    :cond_5
    :goto_2
    iput-boolean p3, p1, Lcom/faceunity/pta_art/core/base/FUItem;->bindState:Z

    .line 87
    iput-object p2, p1, Lcom/faceunity/pta_art/core/base/FUItem;->name:Ljava/lang/String;

    .line 88
    iput v0, p1, Lcom/faceunity/pta_art/core/base/FUItem;->handle:I

    :cond_6
    :goto_3
    return-void
.end method
