.class Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$VideoQualityMonitor;
.super Ljava/lang/Object;
.source "VideoQuality.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VideoQualityMonitor"
.end annotation


# instance fields
.field private mAvoidSettingKeys:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mVideoQualityValueList:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$VideoQualityValue;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;)V
    .locals 0

    .line 454
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$VideoQualityMonitor;->this$0:Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 455
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$VideoQualityMonitor;->mVideoQualityValueList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 456
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$VideoQualityMonitor;->mAvoidSettingKeys:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$1;)V
    .locals 0

    .line 454
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$VideoQualityMonitor;-><init>(Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$VideoQualityMonitor;Ljava/lang/String;)V
    .locals 0

    .line 454
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$VideoQualityMonitor;->addAvoidKey(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$VideoQualityMonitor;Ljava/lang/String;)Z
    .locals 0

    .line 454
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$VideoQualityMonitor;->isContainAvoidKey(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$600(Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$VideoQualityMonitor;)V
    .locals 0

    .line 454
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$VideoQualityMonitor;->clearAll()V

    return-void
.end method

.method static synthetic access$800(Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$VideoQualityMonitor;)I
    .locals 0

    .line 454
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$VideoQualityMonitor;->size()I

    move-result p0

    return p0
.end method

.method private addAvoidKey(Ljava/lang/String;)V
    .locals 0

    .line 532
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$VideoQualityMonitor;->mAvoidSettingKeys:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private clearAll()V
    .locals 0

    .line 505
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$VideoQualityMonitor;->mVideoQualityValueList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    return-void
.end method

.method private get(I)Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$VideoQualityValue;
    .locals 0

    .line 509
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$VideoQualityMonitor;->mVideoQualityValueList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$VideoQualityValue;

    return-object p0
.end method

.method private getFirst()Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$VideoQualityValue;
    .locals 1

    .line 517
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$VideoQualityMonitor;->mVideoQualityValueList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 520
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$VideoQualityMonitor;->mVideoQualityValueList:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$VideoQualityValue;

    return-object p0
.end method

.method private indexOf(Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x0

    .line 495
    :goto_0
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$VideoQualityMonitor;->mVideoQualityValueList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 496
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$VideoQualityMonitor;->mVideoQualityValueList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$VideoQualityValue;

    .line 497
    iget-object v1, v1, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$VideoQualityValue;->headerKey:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method private isContainAvoidKey(Ljava/lang/String;)Z
    .locals 3

    .line 540
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$VideoQualityMonitor;->mAvoidSettingKeys:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    move v0, v1

    .line 543
    :goto_0
    iget-object v2, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$VideoQualityMonitor;->mAvoidSettingKeys:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 544
    iget-object v2, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$VideoQualityMonitor;->mAvoidSettingKeys:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 545
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method private remove(Ljava/lang/String;)I
    .locals 1

    .line 524
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$VideoQualityMonitor;->indexOf(Ljava/lang/String;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 526
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$VideoQualityMonitor;->mVideoQualityValueList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(I)Ljava/lang/Object;

    :cond_0
    return p1
.end method

.method private size()I
    .locals 0

    .line 513
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$VideoQualityMonitor;->mVideoQualityValueList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result p0

    return p0
.end method

.method private sizeOfAvoidKeys()I
    .locals 0

    .line 536
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$VideoQualityMonitor;->mAvoidSettingKeys:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result p0

    return p0
.end method


# virtual methods
.method public add(Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$VideoQualityValue;)V
    .locals 5

    .line 459
    iget-object v0, p1, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$VideoQualityValue;->headerKey:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$VideoQualityMonitor;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 460
    iget-object v1, p1, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$VideoQualityValue;->headerKey:Ljava/lang/String;

    const-string v2, "key_video_quality"

    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    const/4 v1, -0x1

    const-string v3, "override_values_off"

    const-string v4, "value_change_off"

    if-eq v0, v1, :cond_3

    .line 462
    iget-object v1, p1, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$VideoQualityValue;->currentValue:Ljava/lang/String;

    invoke-static {v1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object p1, p1, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$VideoQualityValue;->currentValue:Ljava/lang/String;

    .line 463
    invoke-static {p1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 464
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$VideoQualityMonitor;->mVideoQualityValueList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(I)Ljava/lang/Object;

    .line 466
    :cond_1
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$VideoQualityMonitor;->mVideoQualityValueList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    if-nez p1, :cond_5

    .line 467
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$VideoQualityMonitor;->this$0:Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;

    invoke-static {p1}, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->access$1500(Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 468
    invoke-direct {p0, v2}, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$VideoQualityMonitor;->remove(Ljava/lang/String;)I

    goto :goto_0

    .line 470
    :cond_2
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$VideoQualityMonitor;->this$0:Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->access$1502(Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;Z)Z

    goto :goto_0

    .line 474
    :cond_3
    iget-object v0, p1, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$VideoQualityValue;->currentValue:Ljava/lang/String;

    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p1, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$VideoQualityValue;->currentValue:Ljava/lang/String;

    .line 475
    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 476
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$VideoQualityMonitor;->mVideoQualityValueList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 480
    :cond_4
    invoke-direct {p0, v2}, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$VideoQualityMonitor;->remove(Ljava/lang/String;)I

    .line 481
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$VideoQualityMonitor;->mVideoQualityValueList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    :goto_0
    return-void
.end method

.method public addVideoKey(Ljava/lang/String;)V
    .locals 2

    .line 486
    new-instance v0, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$VideoQualityValue;

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$VideoQualityMonitor;->this$0:Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;

    invoke-direct {v0, v1}, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$VideoQualityValue;-><init>(Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;)V

    const-string v1, "key_video_quality"

    .line 487
    iput-object v1, v0, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$VideoQualityValue;->headerKey:Ljava/lang/String;

    .line 488
    iput-object p1, v0, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$VideoQualityValue;->currentValue:Ljava/lang/String;

    const-string p1, "null"

    .line 489
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, v0, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$VideoQualityValue;->supportValues:Ljava/util/List;

    .line 490
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$VideoQualityMonitor;->this$0:Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;

    invoke-static {p0}, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->access$700(Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;)Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$VideoQualityMonitor;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$VideoQualityMonitor;->add(Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$VideoQualityValue;)V

    return-void
.end method

.method public print()V
    .locals 4

    .line 553
    invoke-static {}, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->access$1100()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mVideoQualityValueList size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$VideoQualityMonitor;->mVideoQualityValueList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 554
    :goto_0
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$VideoQualityMonitor;->mVideoQualityValueList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 555
    invoke-static {}, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->access$1100()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[mVideoQualityValueList] headerKey = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$VideoQualityMonitor;->mVideoQualityValueList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$VideoQualityValue;

    iget-object v3, v3, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$VideoQualityValue;->headerKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", currentValue = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$VideoQualityMonitor;->mVideoQualityValueList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 556
    invoke-virtual {v3, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$VideoQualityValue;

    iget-object v3, v3, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$VideoQualityValue;->currentValue:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 555
    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
