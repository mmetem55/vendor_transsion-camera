.class public Lcom/transsion/hubsdk/api/view/TranBrightnessInfo;
.super Ljava/lang/Object;
.source "TranBrightnessInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/transsion/hubsdk/api/view/TranBrightnessInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mAdjustedBrightness:F

.field public mBrightness:F

.field public mBrightnessMaxReason:I

.field public mBrightnessMaximum:F

.field public mBrightnessMinimum:F

.field public mHighBrightnessMode:I

.field public mHighBrightnessTransitionPoint:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 108
    new-instance v0, Lcom/transsion/hubsdk/api/view/TranBrightnessInfo$1;

    invoke-direct {v0}, Lcom/transsion/hubsdk/api/view/TranBrightnessInfo$1;-><init>()V

    sput-object v0, Lcom/transsion/hubsdk/api/view/TranBrightnessInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/transsion/hubsdk/api/view/TranBrightnessInfo;->mBrightness:F

    .line 140
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/transsion/hubsdk/api/view/TranBrightnessInfo;->mAdjustedBrightness:F

    .line 141
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/transsion/hubsdk/api/view/TranBrightnessInfo;->mBrightnessMinimum:F

    .line 142
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/transsion/hubsdk/api/view/TranBrightnessInfo;->mBrightnessMaximum:F

    .line 143
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/transsion/hubsdk/api/view/TranBrightnessInfo;->mHighBrightnessMode:I

    .line 144
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/transsion/hubsdk/api/view/TranBrightnessInfo;->mHighBrightnessTransitionPoint:F

    .line 145
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/transsion/hubsdk/api/view/TranBrightnessInfo;->mBrightnessMaxReason:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/transsion/hubsdk/api/view/TranBrightnessInfo$1;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lcom/transsion/hubsdk/api/view/TranBrightnessInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 95
    iget p2, p0, Lcom/transsion/hubsdk/api/view/TranBrightnessInfo;->mBrightness:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 96
    iget p2, p0, Lcom/transsion/hubsdk/api/view/TranBrightnessInfo;->mAdjustedBrightness:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 97
    iget p2, p0, Lcom/transsion/hubsdk/api/view/TranBrightnessInfo;->mBrightnessMinimum:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 98
    iget p2, p0, Lcom/transsion/hubsdk/api/view/TranBrightnessInfo;->mBrightnessMaximum:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 99
    iget p2, p0, Lcom/transsion/hubsdk/api/view/TranBrightnessInfo;->mHighBrightnessMode:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 100
    iget p2, p0, Lcom/transsion/hubsdk/api/view/TranBrightnessInfo;->mHighBrightnessTransitionPoint:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 101
    iget p0, p0, Lcom/transsion/hubsdk/api/view/TranBrightnessInfo;->mBrightnessMaxReason:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
