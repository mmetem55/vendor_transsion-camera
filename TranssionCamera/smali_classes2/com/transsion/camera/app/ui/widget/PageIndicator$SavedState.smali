.class Lcom/transsion/camera/app/ui/widget/PageIndicator$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "PageIndicator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/widget/PageIndicator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/transsion/camera/app/ui/widget/PageIndicator$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mPosition:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 359
    new-instance v0, Lcom/transsion/camera/app/ui/widget/PageIndicator$SavedState$1;

    invoke-direct {v0}, Lcom/transsion/camera/app/ui/widget/PageIndicator$SavedState$1;-><init>()V

    sput-object v0, Lcom/transsion/camera/app/ui/widget/PageIndicator$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 347
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 348
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ui/widget/PageIndicator$SavedState;->mPosition:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/transsion/camera/app/ui/widget/PageIndicator$1;)V
    .locals 0

    .line 338
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/widget/PageIndicator$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .locals 0

    .line 343
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 353
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 354
    iget p0, p0, Lcom/transsion/camera/app/ui/widget/PageIndicator$SavedState;->mPosition:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
