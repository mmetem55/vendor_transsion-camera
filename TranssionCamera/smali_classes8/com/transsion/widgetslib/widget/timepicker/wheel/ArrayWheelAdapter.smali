.class public Lcom/transsion/widgetslib/widget/timepicker/wheel/ArrayWheelAdapter;
.super Ljava/lang/Object;
.source "ArrayWheelAdapter.java"

# interfaces
.implements Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelAdapter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelAdapter;"
    }
.end annotation


# static fields
.field public static final DEFAULT_LENGTH:I = -0x1


# instance fields
.field private items:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field private length:I


# direct methods
.method public constructor <init>([Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)V"
        }
    .end annotation

    const/4 v0, -0x1

    .line 48
    invoke-direct {p0, p1, v0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/ArrayWheelAdapter;-><init>([Ljava/lang/Object;I)V

    return-void
.end method

.method public constructor <init>([Ljava/lang/Object;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;I)V"
        }
    .end annotation

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/ArrayWheelAdapter;->items:[Ljava/lang/Object;

    .line 40
    iput p2, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/ArrayWheelAdapter;->length:I

    return-void
.end method


# virtual methods
.method public getItem(I)Ljava/lang/String;
    .locals 1

    if-ltz p1, :cond_0

    .line 53
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/ArrayWheelAdapter;->items:[Ljava/lang/Object;

    array-length v0, p0

    if-ge p1, v0, :cond_0

    .line 54
    aget-object p0, p0, p1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getItemsCount()I
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/ArrayWheelAdapter;->items:[Ljava/lang/Object;

    array-length p0, p0

    return p0
.end method

.method public getMaximumLength()I
    .locals 0

    .line 66
    iget p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/ArrayWheelAdapter;->length:I

    return p0
.end method
