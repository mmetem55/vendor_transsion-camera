.class public Lcom/transsion/camera/feature/arcore/common/widgets/AudioItem;
.super Ljava/lang/Object;
.source "AudioItem.java"


# instance fields
.field private mImageId:I

.field private mTitle:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput p1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/AudioItem;->mTitle:I

    .line 11
    iput p2, p0, Lcom/transsion/camera/feature/arcore/common/widgets/AudioItem;->mImageId:I

    return-void
.end method


# virtual methods
.method public getmImageId()I
    .locals 0

    .line 23
    iget p0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/AudioItem;->mImageId:I

    return p0
.end method

.method public getmTitle()I
    .locals 0

    .line 15
    iget p0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/AudioItem;->mTitle:I

    return p0
.end method

.method public setmImageId(I)V
    .locals 0

    .line 27
    iput p1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/AudioItem;->mImageId:I

    return-void
.end method

.method public setmTitle(I)V
    .locals 0

    .line 19
    iput p1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/AudioItem;->mTitle:I

    return-void
.end method
