.class public Lcom/faceunity/entity/LivePhoto;
.super Ljava/lang/Object;
.source "LivePhoto.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/faceunity/entity/LivePhoto;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private adjustedPointsStr:Ljava/lang/String;

.field private groupPoints:[D

.field private groupPointsStr:Ljava/lang/String;

.field private groupType:[D

.field private groupTypeStr:Ljava/lang/String;

.field private height:I

.field private id:I

.field private stickerImagePathStr:Ljava/lang/String;

.field private templateImagePath:Ljava/lang/String;

.field private transformMatrixStr:Ljava/lang/String;

.field private width:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 463
    new-instance v0, Lcom/faceunity/entity/LivePhoto$1;

    invoke-direct {v0}, Lcom/faceunity/entity/LivePhoto$1;-><init>()V

    sput-object v0, Lcom/faceunity/entity/LivePhoto;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 25
    iput v0, p0, Lcom/faceunity/entity/LivePhoto;->id:I

    const-string v0, ""

    .line 36
    iput-object v0, p0, Lcom/faceunity/entity/LivePhoto;->groupPointsStr:Ljava/lang/String;

    .line 38
    iput-object v0, p0, Lcom/faceunity/entity/LivePhoto;->groupTypeStr:Ljava/lang/String;

    .line 40
    iput-object v0, p0, Lcom/faceunity/entity/LivePhoto;->templateImagePath:Ljava/lang/String;

    .line 42
    iput-object v0, p0, Lcom/faceunity/entity/LivePhoto;->stickerImagePathStr:Ljava/lang/String;

    .line 44
    iput-object v0, p0, Lcom/faceunity/entity/LivePhoto;->transformMatrixStr:Ljava/lang/String;

    .line 46
    iput-object v0, p0, Lcom/faceunity/entity/LivePhoto;->adjustedPointsStr:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 449
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 25
    iput v0, p0, Lcom/faceunity/entity/LivePhoto;->id:I

    const-string v0, ""

    .line 36
    iput-object v0, p0, Lcom/faceunity/entity/LivePhoto;->groupPointsStr:Ljava/lang/String;

    .line 38
    iput-object v0, p0, Lcom/faceunity/entity/LivePhoto;->groupTypeStr:Ljava/lang/String;

    .line 40
    iput-object v0, p0, Lcom/faceunity/entity/LivePhoto;->templateImagePath:Ljava/lang/String;

    .line 42
    iput-object v0, p0, Lcom/faceunity/entity/LivePhoto;->stickerImagePathStr:Ljava/lang/String;

    .line 44
    iput-object v0, p0, Lcom/faceunity/entity/LivePhoto;->transformMatrixStr:Ljava/lang/String;

    .line 46
    iput-object v0, p0, Lcom/faceunity/entity/LivePhoto;->adjustedPointsStr:Ljava/lang/String;

    .line 450
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/faceunity/entity/LivePhoto;->id:I

    .line 451
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/faceunity/entity/LivePhoto;->width:I

    .line 452
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/faceunity/entity/LivePhoto;->height:I

    .line 453
    invoke-virtual {p1}, Landroid/os/Parcel;->createDoubleArray()[D

    move-result-object v0

    iput-object v0, p0, Lcom/faceunity/entity/LivePhoto;->groupPoints:[D

    .line 454
    invoke-virtual {p1}, Landroid/os/Parcel;->createDoubleArray()[D

    move-result-object v0

    iput-object v0, p0, Lcom/faceunity/entity/LivePhoto;->groupType:[D

    .line 455
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/faceunity/entity/LivePhoto;->groupPointsStr:Ljava/lang/String;

    .line 456
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/faceunity/entity/LivePhoto;->groupTypeStr:Ljava/lang/String;

    .line 457
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/faceunity/entity/LivePhoto;->templateImagePath:Ljava/lang/String;

    .line 458
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/faceunity/entity/LivePhoto;->stickerImagePathStr:Ljava/lang/String;

    .line 459
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/faceunity/entity/LivePhoto;->transformMatrixStr:Ljava/lang/String;

    .line 460
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/faceunity/entity/LivePhoto;->adjustedPointsStr:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_9

    .line 390
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 394
    :cond_1
    check-cast p1, Lcom/faceunity/entity/LivePhoto;

    .line 396
    iget v2, p0, Lcom/faceunity/entity/LivePhoto;->id:I

    iget v3, p1, Lcom/faceunity/entity/LivePhoto;->id:I

    if-eq v2, v3, :cond_2

    return v1

    .line 399
    :cond_2
    iget v2, p0, Lcom/faceunity/entity/LivePhoto;->width:I

    iget v3, p1, Lcom/faceunity/entity/LivePhoto;->width:I

    if-eq v2, v3, :cond_3

    return v1

    .line 402
    :cond_3
    iget v2, p0, Lcom/faceunity/entity/LivePhoto;->height:I

    iget v3, p1, Lcom/faceunity/entity/LivePhoto;->height:I

    if-eq v2, v3, :cond_4

    return v1

    .line 405
    :cond_4
    iget-object v2, p0, Lcom/faceunity/entity/LivePhoto;->groupPoints:[D

    iget-object v3, p1, Lcom/faceunity/entity/LivePhoto;->groupPoints:[D

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([D[D)Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    .line 408
    :cond_5
    iget-object v2, p0, Lcom/faceunity/entity/LivePhoto;->groupType:[D

    iget-object v3, p1, Lcom/faceunity/entity/LivePhoto;->groupType:[D

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([D[D)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    .line 411
    :cond_6
    iget-object p0, p0, Lcom/faceunity/entity/LivePhoto;->templateImagePath:Ljava/lang/String;

    if-eqz p0, :cond_7

    iget-object p1, p1, Lcom/faceunity/entity/LivePhoto;->templateImagePath:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_7
    iget-object p0, p1, Lcom/faceunity/entity/LivePhoto;->templateImagePath:Ljava/lang/String;

    if-nez p0, :cond_8

    goto :goto_0

    :cond_8
    move v0, v1

    :goto_0
    return v0

    :cond_9
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 376
    iget v0, p0, Lcom/faceunity/entity/LivePhoto;->id:I

    mul-int/lit8 v0, v0, 0x1f

    .line 377
    iget v1, p0, Lcom/faceunity/entity/LivePhoto;->width:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 378
    iget v1, p0, Lcom/faceunity/entity/LivePhoto;->height:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 379
    iget-object v1, p0, Lcom/faceunity/entity/LivePhoto;->groupPoints:[D

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([D)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 380
    iget-object v1, p0, Lcom/faceunity/entity/LivePhoto;->groupType:[D

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([D)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 381
    iget-object p0, p0, Lcom/faceunity/entity/LivePhoto;->templateImagePath:Ljava/lang/String;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 416
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LivePhoto{id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/faceunity/entity/LivePhoto;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/faceunity/entity/LivePhoto;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/faceunity/entity/LivePhoto;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", groupPointsStr=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/faceunity/entity/LivePhoto;->groupPointsStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", groupTypeStr=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/faceunity/entity/LivePhoto;->groupTypeStr:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", templateImagePath=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/faceunity/entity/LivePhoto;->templateImagePath:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", stickerImagePathStr=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/faceunity/entity/LivePhoto;->stickerImagePathStr:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", transformMatrixStr=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/faceunity/entity/LivePhoto;->transformMatrixStr:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", adjustedPointsStr=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/faceunity/entity/LivePhoto;->adjustedPointsStr:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 436
    iget p2, p0, Lcom/faceunity/entity/LivePhoto;->id:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 437
    iget p2, p0, Lcom/faceunity/entity/LivePhoto;->width:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 438
    iget p2, p0, Lcom/faceunity/entity/LivePhoto;->height:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 439
    iget-object p2, p0, Lcom/faceunity/entity/LivePhoto;->groupPoints:[D

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeDoubleArray([D)V

    .line 440
    iget-object p2, p0, Lcom/faceunity/entity/LivePhoto;->groupType:[D

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeDoubleArray([D)V

    .line 441
    iget-object p2, p0, Lcom/faceunity/entity/LivePhoto;->groupPointsStr:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 442
    iget-object p2, p0, Lcom/faceunity/entity/LivePhoto;->groupTypeStr:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 443
    iget-object p2, p0, Lcom/faceunity/entity/LivePhoto;->templateImagePath:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 444
    iget-object p2, p0, Lcom/faceunity/entity/LivePhoto;->stickerImagePathStr:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 445
    iget-object p2, p0, Lcom/faceunity/entity/LivePhoto;->transformMatrixStr:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 446
    iget-object p0, p0, Lcom/faceunity/entity/LivePhoto;->adjustedPointsStr:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
