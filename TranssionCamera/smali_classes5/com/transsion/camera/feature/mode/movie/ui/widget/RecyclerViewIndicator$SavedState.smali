.class Lcom/transsion/camera/feature/mode/movie/ui/widget/RecyclerViewIndicator$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "RecyclerViewIndicator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/movie/ui/widget/RecyclerViewIndicator;
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
            "Lcom/transsion/camera/feature/mode/movie/ui/widget/RecyclerViewIndicator$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mPosition:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 245
    new-instance v0, Lcom/transsion/camera/feature/mode/movie/ui/widget/RecyclerViewIndicator$SavedState$1;

    invoke-direct {v0}, Lcom/transsion/camera/feature/mode/movie/ui/widget/RecyclerViewIndicator$SavedState$1;-><init>()V

    sput-object v0, Lcom/transsion/camera/feature/mode/movie/ui/widget/RecyclerViewIndicator$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 233
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 234
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/RecyclerViewIndicator$SavedState;->mPosition:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/transsion/camera/feature/mode/movie/ui/widget/RecyclerViewIndicator$1;)V
    .locals 0

    .line 224
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/movie/ui/widget/RecyclerViewIndicator$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .locals 0

    .line 229
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 239
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 240
    iget p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/RecyclerViewIndicator$SavedState;->mPosition:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
