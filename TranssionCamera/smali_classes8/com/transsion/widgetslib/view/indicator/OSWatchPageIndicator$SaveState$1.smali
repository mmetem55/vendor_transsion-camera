.class Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator$SaveState$1;
.super Ljava/lang/Object;
.source "OSWatchPageIndicator.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator$SaveState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator$SaveState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 477
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator$SaveState;
    .locals 1

    .line 479
    new-instance p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator$SaveState;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator$SaveState;-><init>(Landroid/os/Parcel;Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator$1;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 477
    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator$SaveState$1;->createFromParcel(Landroid/os/Parcel;)Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator$SaveState;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator$SaveState;
    .locals 0

    .line 483
    new-array p0, p1, [Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator$SaveState;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 477
    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator$SaveState$1;->newArray(I)[Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator$SaveState;

    move-result-object p0

    return-object p0
.end method
