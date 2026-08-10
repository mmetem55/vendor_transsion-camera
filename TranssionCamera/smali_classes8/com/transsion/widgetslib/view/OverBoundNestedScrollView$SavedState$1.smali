.class Lcom/transsion/widgetslib/view/OverBoundNestedScrollView$SavedState$1;
.super Ljava/lang/Object;
.source "OverBoundNestedScrollView.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/widgetslib/view/OverBoundNestedScrollView$SavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/transsion/widgetslib/view/OverBoundNestedScrollView$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 2133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/transsion/widgetslib/view/OverBoundNestedScrollView$SavedState;
    .locals 0

    .line 2136
    new-instance p0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView$SavedState;

    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView$SavedState;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 2133
    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView$SavedState$1;->createFromParcel(Landroid/os/Parcel;)Lcom/transsion/widgetslib/view/OverBoundNestedScrollView$SavedState;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/transsion/widgetslib/view/OverBoundNestedScrollView$SavedState;
    .locals 0

    .line 2141
    new-array p0, p1, [Lcom/transsion/widgetslib/view/OverBoundNestedScrollView$SavedState;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 2133
    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView$SavedState$1;->newArray(I)[Lcom/transsion/widgetslib/view/OverBoundNestedScrollView$SavedState;

    move-result-object p0

    return-object p0
.end method
