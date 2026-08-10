.class public Lcom/transsion/widgetslib/widget/timepicker/wheel/NumericWheelAdapter;
.super Ljava/lang/Object;
.source "NumericWheelAdapter.java"

# interfaces
.implements Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelAdapter;


# static fields
.field public static final DEFAULT_MAX_VALUE:I = 0x9

.field private static final DEFAULT_MIN_VALUE:I = 0x0

.field private static final EG_AR:Ljava/lang/String; = "EG_ar"

.field private static final IR_FA:Ljava/lang/String; = "IR_fa"


# instance fields
.field private format:Ljava/lang/String;

.field private isNumberNeedTranslate:Z

.field private maxValue:I

.field public minValue:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x9

    .line 53
    invoke-direct {p0, v0, v1}, Lcom/transsion/widgetslib/widget/timepicker/wheel/NumericWheelAdapter;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    const/4 v0, 0x0

    .line 63
    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/NumericWheelAdapter;-><init>(IILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;)V
    .locals 1

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/NumericWheelAdapter;->minValue:I

    .line 75
    iput p2, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/NumericWheelAdapter;->maxValue:I

    .line 76
    iput-object p3, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/NumericWheelAdapter;->format:Ljava/lang/String;

    .line 77
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    .line 78
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "_"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "EG_ar"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "IR_fa"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    iput-boolean p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/NumericWheelAdapter;->isNumberNeedTranslate:Z

    return-void
.end method


# virtual methods
.method public getItem(I)Ljava/lang/String;
    .locals 3

    if-ltz p1, :cond_3

    .line 83
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/NumericWheelAdapter;->getItemsCount()I

    move-result v0

    if-ge p1, v0, :cond_3

    .line 84
    iget v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/NumericWheelAdapter;->minValue:I

    add-int/2addr v0, p1

    .line 85
    iget-boolean p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/NumericWheelAdapter;->isNumberNeedTranslate:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_1

    .line 86
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/NumericWheelAdapter;->format:Ljava/lang/String;

    if-eqz p0, :cond_0

    new-array p1, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p1, v1

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "%d"

    invoke-static {p1, v0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0

    .line 88
    :cond_1
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/NumericWheelAdapter;->format:Ljava/lang/String;

    if-eqz p0, :cond_2

    new-array p1, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p1, v1

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_2
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    :goto_1
    return-object p0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public getItemsCount()I
    .locals 1

    .line 96
    iget v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/NumericWheelAdapter;->maxValue:I

    iget p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/NumericWheelAdapter;->minValue:I

    sub-int/2addr v0, p0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getMaxValue()I
    .locals 0

    .line 118
    iget p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/NumericWheelAdapter;->maxValue:I

    return p0
.end method

.method public getMaximumLength()I
    .locals 2

    .line 101
    iget v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/NumericWheelAdapter;->maxValue:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/NumericWheelAdapter;->minValue:I

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 102
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 103
    iget p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/NumericWheelAdapter;->minValue:I

    if-gez p0, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    return v0
.end method

.method public getMinValue()I
    .locals 0

    .line 110
    iget p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/NumericWheelAdapter;->minValue:I

    return p0
.end method

.method public setMaxValue(I)V
    .locals 0

    .line 122
    iput p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/NumericWheelAdapter;->maxValue:I

    return-void
.end method

.method public setMinValue(I)V
    .locals 0

    .line 114
    iput p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/NumericWheelAdapter;->minValue:I

    return-void
.end method
