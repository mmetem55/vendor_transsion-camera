.class Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton$SaveState;
.super Landroid/view/View$BaseSavedState;
.source "ExpandActionButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SaveState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton$SaveState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field expandable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 347
    new-instance v0, Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton$SaveState$1;

    invoke-direct {v0}, Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton$SaveState$1;-><init>()V

    sput-object v0, Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton$SaveState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 333
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 334
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton$SaveState;->expandable:Z

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton$1;)V
    .locals 0

    .line 328
    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton$SaveState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method constructor <init>(Landroid/os/Parcelable;)V
    .locals 0

    .line 338
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 343
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 344
    iget-boolean p0, p0, Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton$SaveState;->expandable:Z

    xor-int/lit8 p0, p0, 0x1

    int-to-byte p0, p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeByte(B)V

    return-void
.end method
