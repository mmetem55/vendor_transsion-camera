.class public Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator$SaveState;
.super Landroid/view/View$BaseSavedState;
.source "OSWatchPageIndicator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SaveState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator$SaveState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field currentIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 476
    new-instance v0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator$SaveState$1;

    invoke-direct {v0}, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator$SaveState$1;-><init>()V

    sput-object v0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator$SaveState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 488
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    const/4 v0, 0x0

    .line 455
    iput v0, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator$SaveState;->currentIndex:I

    .line 489
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator$SaveState;->currentIndex:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator$1;)V
    .locals 0

    .line 454
    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator$SaveState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method constructor <init>(Landroid/os/Parcelable;)V
    .locals 0

    .line 458
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    const/4 p1, 0x0

    .line 455
    iput p1, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator$SaveState;->currentIndex:I

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 469
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OSWatchPageIndicator.SavedState{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 470
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " currentIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator$SaveState;->currentIndex:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 472
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 463
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 464
    iget p0, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator$SaveState;->currentIndex:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
