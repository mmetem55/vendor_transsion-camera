.class public Lcom/transsion/widgetslib/widget/timepicker/wheel/DateObject;
.super Ljava/lang/Object;
.source "DateObject.java"


# instance fields
.field private mDay:I

.field private mHour:I

.field private mListItem:Ljava/lang/String;

.field private mMinute:I

.field private mMonth:I

.field private mWeek:I

.field private mYear:I


# direct methods
.method public constructor <init>(III)V
    .locals 2

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/DateObject;->mYear:I

    .line 20
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result p1

    if-le p3, p1, :cond_0

    add-int/lit8 v0, p2, 0x1

    .line 22
    iput v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/DateObject;->mYear:I

    .line 23
    rem-int/2addr p3, p1

    iput p3, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/DateObject;->mDay:I

    goto :goto_0

    .line 25
    :cond_0
    iput p2, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/DateObject;->mMonth:I

    .line 26
    iput p3, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/DateObject;->mDay:I

    .line 29
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 p3, 0x1

    new-array v0, p3, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const-string p2, "%02d"

    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\u6708"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array p3, p3, [Ljava/lang/Object;

    iget v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/DateObject;->mDay:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p3, v1

    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\u65e5"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/DateObject;->mListItem:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(IIZ)V
    .locals 3

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-ne p3, v2, :cond_1

    if-eq p1, v1, :cond_1

    const/16 p2, 0x18

    if-le p1, p2, :cond_0

    .line 45
    rem-int/2addr p1, p2

    iput p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/DateObject;->mHour:I

    goto :goto_0

    .line 47
    :cond_0
    iput p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/DateObject;->mHour:I

    .line 48
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget p2, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/DateObject;->mHour:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/DateObject;->mListItem:Ljava/lang/String;

    goto :goto_2

    :cond_1
    if-nez p3, :cond_3

    if-eq p2, v1, :cond_3

    const/16 p1, 0x3c

    if-le p2, p1, :cond_2

    .line 51
    rem-int/2addr p2, p1

    iput p2, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/DateObject;->mMinute:I

    goto :goto_1

    .line 53
    :cond_2
    iput p2, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/DateObject;->mMinute:I

    .line 54
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget p2, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/DateObject;->mMinute:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/DateObject;->mListItem:Ljava/lang/String;

    :cond_3
    :goto_2
    return-void
.end method


# virtual methods
.method public getDay()I
    .locals 0

    .line 99
    iget p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/DateObject;->mDay:I

    return p0
.end method

.method public getHour()I
    .locals 0

    .line 59
    iget p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/DateObject;->mHour:I

    return p0
.end method

.method public getListItem()Ljava/lang/String;
    .locals 0

    .line 107
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/DateObject;->mListItem:Ljava/lang/String;

    return-object p0
.end method

.method public getMinute()I
    .locals 0

    .line 67
    iget p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/DateObject;->mMinute:I

    return p0
.end method

.method public getMonth()I
    .locals 0

    .line 91
    iget p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/DateObject;->mMonth:I

    return p0
.end method

.method public getWeek()I
    .locals 0

    .line 75
    iget p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/DateObject;->mWeek:I

    return p0
.end method

.method public getmYear()I
    .locals 0

    .line 83
    iget p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/DateObject;->mYear:I

    return p0
.end method

.method public setDay(I)V
    .locals 0

    .line 103
    iput p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/DateObject;->mDay:I

    return-void
.end method

.method public setHour(I)V
    .locals 0

    .line 63
    iput p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/DateObject;->mHour:I

    return-void
.end method

.method public setListItem(Ljava/lang/String;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/DateObject;->mListItem:Ljava/lang/String;

    return-void
.end method

.method public setMinute(I)V
    .locals 0

    .line 71
    iput p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/DateObject;->mMinute:I

    return-void
.end method

.method public setMonth(I)V
    .locals 0

    .line 95
    iput p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/DateObject;->mMonth:I

    return-void
.end method

.method public setWeek(I)V
    .locals 0

    .line 79
    iput p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/DateObject;->mWeek:I

    return-void
.end method

.method public setmYear(I)V
    .locals 0

    .line 87
    iput p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/DateObject;->mYear:I

    return-void
.end method
