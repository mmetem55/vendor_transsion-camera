.class public Lcom/transsion/hubsdk/api/os/TranUserInfo;
.super Ljava/lang/Object;
.source "TranUserInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/transsion/hubsdk/api/os/TranUserInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mCreationTime:J

.field public mFlags:I

.field public mIconPath:Ljava/lang/String;

.field public mId:I

.field public mIsDualProfile:Z

.field public mLastLoggedInFingerprint:Ljava/lang/String;

.field public mName:Ljava/lang/String;

.field public mPartial:Z

.field public mPreCreated:Z

.field public mProfileBadge:I

.field public mProfileGroupId:I

.field public mRestrictedProfileParentId:I

.field public mSerialNumber:I

.field public mUserType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 466
    new-instance v0, Lcom/transsion/hubsdk/api/os/TranUserInfo$1;

    invoke-direct {v0}, Lcom/transsion/hubsdk/api/os/TranUserInfo$1;-><init>()V

    sput-object v0, Lcom/transsion/hubsdk/api/os/TranUserInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 411
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 412
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/transsion/hubsdk/api/os/TranUserInfo;->mId:I

    .line 413
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/transsion/hubsdk/api/os/TranUserInfo;->mFlags:I

    .line 414
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/hubsdk/api/os/TranUserInfo;->mUserType:Ljava/lang/String;

    .line 415
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/hubsdk/api/os/TranUserInfo;->mName:Ljava/lang/String;

    .line 416
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/transsion/hubsdk/api/os/TranUserInfo;->mSerialNumber:I

    .line 417
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/hubsdk/api/os/TranUserInfo;->mIconPath:Ljava/lang/String;

    .line 418
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/hubsdk/api/os/TranUserInfo;->mCreationTime:J

    .line 419
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/transsion/hubsdk/api/os/TranUserInfo;->mPartial:Z

    .line 420
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    iput-boolean v0, p0, Lcom/transsion/hubsdk/api/os/TranUserInfo;->mPreCreated:Z

    .line 421
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/hubsdk/api/os/TranUserInfo;->mLastLoggedInFingerprint:Ljava/lang/String;

    .line 422
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/transsion/hubsdk/api/os/TranUserInfo;->mProfileBadge:I

    .line 423
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/transsion/hubsdk/api/os/TranUserInfo;->mRestrictedProfileParentId:I

    .line 424
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/transsion/hubsdk/api/os/TranUserInfo;->mProfileGroupId:I

    .line 425
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    iput-boolean v1, p0, Lcom/transsion/hubsdk/api/os/TranUserInfo;->mIsDualProfile:Z

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 436
    iget v0, p0, Lcom/transsion/hubsdk/api/os/TranUserInfo;->mId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 437
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 438
    iget-object p2, p0, Lcom/transsion/hubsdk/api/os/TranUserInfo;->mUserType:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 439
    iget-object p2, p0, Lcom/transsion/hubsdk/api/os/TranUserInfo;->mName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 440
    iget p2, p0, Lcom/transsion/hubsdk/api/os/TranUserInfo;->mSerialNumber:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 441
    iget-object p2, p0, Lcom/transsion/hubsdk/api/os/TranUserInfo;->mIconPath:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 442
    iget-wide v0, p0, Lcom/transsion/hubsdk/api/os/TranUserInfo;->mCreationTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 443
    iget-boolean p2, p0, Lcom/transsion/hubsdk/api/os/TranUserInfo;->mPartial:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 444
    iget-boolean p2, p0, Lcom/transsion/hubsdk/api/os/TranUserInfo;->mPreCreated:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 445
    iget-object p2, p0, Lcom/transsion/hubsdk/api/os/TranUserInfo;->mLastLoggedInFingerprint:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 446
    iget p2, p0, Lcom/transsion/hubsdk/api/os/TranUserInfo;->mProfileBadge:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 447
    iget p2, p0, Lcom/transsion/hubsdk/api/os/TranUserInfo;->mRestrictedProfileParentId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 448
    iget p2, p0, Lcom/transsion/hubsdk/api/os/TranUserInfo;->mProfileGroupId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 449
    iget-boolean p0, p0, Lcom/transsion/hubsdk/api/os/TranUserInfo;->mIsDualProfile:Z

    int-to-byte p0, p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeByte(B)V

    return-void
.end method
