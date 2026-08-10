.class public Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;
.super Ljava/lang/Object;
.source "OSDateTimePickerDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog$OnDateTimeSetListener;,
        Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog$OnChangeListener;
    }
.end annotation


# instance fields
.field dateOnchangeListener:Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$OnDateTimeChangeListener;

.field private mBuilder:Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

.field private mCalendar:Ljava/util/Calendar;

.field private mContext:Landroid/content/Context;

.field private mDateTimePicker:Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;

.field private mDialog:Lcom/transsion/widgetslib/dialog/PromptDialog;

.field private mEndYear:I

.field private mFormat:Ljava/lang/String;

.field private mOnChangeListener:Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog$OnChangeListener;

.field private mOnDateTimeSetListener:Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog$OnDateTimeSetListener;

.field private mStartYear:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "yyyy-MM-dd HH:mm"

    .line 24
    iput-object v0, p0, Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;->mFormat:Ljava/lang/String;

    .line 165
    new-instance v0, Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog$1;

    invoke-direct {v0, p0}, Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog$1;-><init>(Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;)V

    iput-object v0, p0, Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;->dateOnchangeListener:Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$OnDateTimeChangeListener;

    .line 28
    iput-object p1, p0, Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;->mContext:Landroid/content/Context;

    .line 29
    new-instance v0, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    invoke-direct {v0, p1}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;->mBuilder:Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 1

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "yyyy-MM-dd HH:mm"

    .line 24
    iput-object v0, p0, Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;->mFormat:Ljava/lang/String;

    .line 165
    new-instance v0, Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog$1;

    invoke-direct {v0, p0}, Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog$1;-><init>(Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;)V

    iput-object v0, p0, Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;->dateOnchangeListener:Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$OnDateTimeChangeListener;

    .line 65
    iput-object p1, p0, Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;->mContext:Landroid/content/Context;

    .line 66
    new-instance v0, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    invoke-direct {v0, p1}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;->mBuilder:Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    .line 67
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;->mCalendar:Ljava/util/Calendar;

    const/16 v0, 0xb

    .line 68
    invoke-virtual {p1, v0, p2}, Ljava/util/Calendar;->set(II)V

    .line 69
    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;->mCalendar:Ljava/util/Calendar;

    const/16 p1, 0xc

    invoke-virtual {p0, p1, p3}, Ljava/util/Calendar;->set(II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;III)V
    .locals 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "yyyy-MM-dd HH:mm"

    .line 24
    iput-object v0, p0, Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;->mFormat:Ljava/lang/String;

    .line 165
    new-instance v0, Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog$1;

    invoke-direct {v0, p0}, Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog$1;-><init>(Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;)V

    iput-object v0, p0, Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;->dateOnchangeListener:Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$OnDateTimeChangeListener;

    .line 52
    iput-object p1, p0, Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;->mContext:Landroid/content/Context;

    .line 53
    new-instance v0, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    invoke-direct {v0, p1}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;->mBuilder:Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    .line 54
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;->mCalendar:Ljava/util/Calendar;

    const/4 v0, 0x1

    .line 55
    invoke-virtual {p1, v0, p2}, Ljava/util/Calendar;->set(II)V

    .line 56
    iget-object p1, p0, Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;->mCalendar:Ljava/util/Calendar;

    const/4 p2, 0x2

    invoke-virtual {p1, p2, p3}, Ljava/util/Calendar;->set(II)V

    .line 57
    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;->mCalendar:Ljava/util/Calendar;

    const/4 p1, 0x5

    invoke-virtual {p0, p1, p4}, Ljava/util/Calendar;->set(II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IIIII)V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "yyyy-MM-dd HH:mm"

    .line 24
    iput-object v0, p0, Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;->mFormat:Ljava/lang/String;

    .line 165
    new-instance v0, Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog$1;

    invoke-direct {v0, p0}, Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog$1;-><init>(Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;)V

    iput-object v0, p0, Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;->dateOnchangeListener:Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$OnDateTimeChangeListener;

    .line 37
    iput-object p1, p0, Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;->mContext:Landroid/content/Context;

    .line 38
    new-instance v0, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    invoke-direct {v0, p1}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;->mBuilder:Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    .line 39
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;->mCalendar:Ljava/util/Calendar;

    const/4 v0, 0x1

    .line 40
    invoke-virtual {p1, v0, p2}, Ljava/util/Calendar;->set(II)V

    .line 41
    iget-object p1, p0, Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;->mCalendar:Ljava/util/Calendar;

    const/4 p2, 0x2

    invoke-virtual {p1, p2, p3}, Ljava/util/Calendar;->set(II)V

    .line 42
    iget-object p1, p0, Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;->mCalendar:Ljava/util/Calendar;

    const/4 p2, 0x5

    invoke-virtual {p1, p2, p4}, Ljava/util/Calendar;->set(II)V

    .line 43
    iget-object p1, p0, Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;->mCalendar:Ljava/util/Calendar;

    const/16 p2, 0xb

    invoke-virtual {p1, p2, p5}, Ljava/util/Calendar;->set(II)V

    .line 44
    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;->mCalendar:Ljava/util/Calendar;

    const/16 p1, 0xc

    invoke-virtual {p0, p1, p6}, Ljava/util/Calendar;->set(II)V

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;)Ljava/util/Calendar;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;->mCalendar:Ljava/util/Calendar;

    return-object p0
.end method

.method static synthetic access$002(Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;Ljava/util/Calendar;)Ljava/util/Calendar;
    .locals 0

    .line 15
    iput-object p1, p0, Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;->mCalendar:Ljava/util/Calendar;

    return-object p1
.end method

.method static synthetic access$100(Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;->onChanged()V

    return-void
.end method

.method static synthetic access$200(Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;)Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog$OnDateTimeSetListener;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;->mOnDateTimeSetListener:Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog$OnDateTimeSetListener;

    return-object p0
.end method

.method static synthetic access$300(Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;)Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;->mDateTimePicker:Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;

    return-object p0
.end method

.method private getTitle()Ljava/lang/String;
    .locals 4

    .line 221
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;->mFormat:Ljava/lang/String;

    const-string v1, "yyyy-MM-dd"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x16

    goto :goto_0

    .line 223
    :cond_0
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;->mFormat:Ljava/lang/String;

    const-string v1, "HH:mm"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/16 v0, 0x17

    .line 228
    :goto_0
    iget-object v1, p0, Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;->mCalendar:Ljava/util/Calendar;

    .line 230
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 228
    invoke-static {v1, v2, v3, v0}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private onChanged()V
    .locals 10

    .line 206
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;->mOnChangeListener:Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog$OnChangeListener;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 207
    iget-object v1, p0, Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;->mOnChangeListener:Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog$OnChangeListener;

    iget-object v2, p0, Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;->mDateTimePicker:Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;

    iget-object v3, p0, Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;->mCalendar:Ljava/util/Calendar;

    const/4 v0, 0x1

    .line 208
    invoke-virtual {v3, v0}, Ljava/util/Calendar;->get(I)I

    move-result v4

    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;->mCalendar:Ljava/util/Calendar;

    const/4 v5, 0x2

    .line 209
    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;->mCalendar:Ljava/util/Calendar;

    const/4 v6, 0x5

    .line 210
    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;->mCalendar:Ljava/util/Calendar;

    const/16 v7, 0xb

    .line 211
    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;->mCalendar:Ljava/util/Calendar;

    const/16 v8, 0xc

    .line 212
    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;->mCalendar:Ljava/util/Calendar;

    const/16 v9, 0x9

    .line 213
    invoke-virtual {v0, v9}, Ljava/util/Calendar;->get(I)I

    move-result v9

    .line 207
    invoke-interface/range {v1 .. v9}, Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog$OnChangeListener;->onChange(Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;Ljava/util/Calendar;IIIIII)V

    .line 214
    invoke-direct {p0}, Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;->updateTitle()V

    :cond_0
    return-void
.end method

.method private setPickerView()V
    .locals 4

    .line 151
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;->mCalendar:Ljava/util/Calendar;

    if-nez v0, :cond_0

    .line 152
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;->mCalendar:Ljava/util/Calendar;

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;->mContext:Landroid/content/Context;

    sget v1, Lcom/transsion/widgetslib/R$layout;->os_picker_date_time_layout:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 156
    sget v1, Lcom/transsion/widgetslib/R$id;->datePicker:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;

    iput-object v1, p0, Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;->mDateTimePicker:Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;

    .line 157
    iget v2, p0, Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;->mStartYear:I

    if-nez v2, :cond_1

    iget v3, p0, Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;->mEndYear:I

    if-eqz v3, :cond_2

    .line 158
    :cond_1
    iget v3, p0, Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;->mEndYear:I

    invoke-virtual {v1, v2, v3}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->setYearDuration(II)V

    .line 160
    :cond_2
    iget-object v1, p0, Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;->mDateTimePicker:Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;

    iget-object v2, p0, Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;->mCalendar:Ljava/util/Calendar;

    iget-object v3, p0, Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;->mFormat:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->init(Ljava/util/Calendar;Ljava/lang/String;)V

    .line 161
    iget-object v1, p0, Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;->mDateTimePicker:Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;

    iget-object v2, p0, Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;->dateOnchangeListener:Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$OnDateTimeChangeListener;

    invoke-virtual {v1, v2}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->setOnDateChangeListener(Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$OnDateTimeChangeListener;)V

    .line 162
    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;->mBuilder:Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setView(Landroid/view/View;)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    return-void
.end method

.method private updateTitle()V
    .locals 1

    .line 237
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;->mDialog:Lcom/transsion/widgetslib/dialog/PromptDialog;

    if-eqz v0, :cond_0

    .line 238
    invoke-direct {p0}, Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;->getTitle()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/transsion/widgetslib/dialog/PromptDialog;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public create()Lcom/transsion/widgetslib/dialog/PromptDialog;
    .locals 1

    .line 143
    invoke-direct {p0}, Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;->setPickerView()V

    .line 144
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;->mBuilder:Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->create()Lcom/transsion/widgetslib/dialog/PromptDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;->mDialog:Lcom/transsion/widgetslib/dialog/PromptDialog;

    .line 145
    invoke-virtual {v0}, Lcom/transsion/widgetslib/dialog/PromptDialog;->setTitleSingleLine()V

    .line 146
    invoke-direct {p0}, Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;->updateTitle()V

    .line 147
    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;->mDialog:Lcom/transsion/widgetslib/dialog/PromptDialog;

    return-object p0
.end method

.method public disMiss()V
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;->mDialog:Lcom/transsion/widgetslib/dialog/PromptDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;->mDialog:Lcom/transsion/widgetslib/dialog/PromptDialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public getDateTimePicker()Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;
    .locals 0

    .line 135
    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;->mDateTimePicker:Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;

    return-object p0
.end method

.method public isShowing()Z
    .locals 0

    .line 131
    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;->mDialog:Lcom/transsion/widgetslib/dialog/PromptDialog;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/Dialog;->isShowing()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 266
    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;->mDialog:Lcom/transsion/widgetslib/dialog/PromptDialog;

    if-eqz p0, :cond_0

    .line 267
    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/dialog/PromptDialog;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_0
    return-void
.end method

.method public setCancelable(Z)Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;->mBuilder:Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    invoke-virtual {v0, p1}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setCancelable(Z)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    return-object p0
.end method

.method public setCanceledOnTouchOutside(Z)Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;->mBuilder:Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    invoke-virtual {v0, p1}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setCanceledOnTouchOutside(Z)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    return-object p0
.end method

.method public setFormat(Ljava/lang/String;)V
    .locals 0

    .line 139
    iput-object p1, p0, Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;->mFormat:Ljava/lang/String;

    return-void
.end method

.method public setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;

    move-result-object p0

    return-object p0
.end method

.method public setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;->mBuilder:Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    invoke-virtual {v0, p1, p2}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    return-object p0
.end method

.method public setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;->mBuilder:Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    invoke-virtual {v0, p1}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    return-object p0
.end method

.method public setOnChangeListener(Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog$OnChangeListener;)Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;
    .locals 0

    .line 178
    iput-object p1, p0, Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;->mOnChangeListener:Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog$OnChangeListener;

    return-object p0
.end method

.method public setOnDateTimeSetListener(Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog$OnDateTimeSetListener;)Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;
    .locals 2

    .line 187
    iput-object p1, p0, Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;->mOnDateTimeSetListener:Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog$OnDateTimeSetListener;

    .line 188
    iget-object p1, p0, Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;->mBuilder:Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    sget v0, Lcom/transsion/widgetslib/R$string;->os_preference_dialog_positive_string:I

    new-instance v1, Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog$2;

    invoke-direct {v1, p0}, Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog$2;-><init>(Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;)V

    invoke-virtual {p1, v0, v1}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    return-object p0
.end method

.method public setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;->mBuilder:Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    invoke-virtual {v0, p1}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    return-object p0
.end method

.method public setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;

    move-result-object p0

    return-object p0
.end method

.method public setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;->mBuilder:Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    invoke-virtual {v0, p1, p2}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    return-object p0
.end method

.method public setTitle(I)Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;->mBuilder:Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    invoke-virtual {v0, p1}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setTopTitle(I)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;->mBuilder:Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    invoke-virtual {v0, p1}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setTopTitle(Ljava/lang/CharSequence;)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    return-object p0
.end method

.method public setYearDuration(II)V
    .locals 0

    .line 261
    iput p1, p0, Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;->mStartYear:I

    .line 262
    iput p2, p0, Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;->mEndYear:I

    return-void
.end method

.method public updateDate(III)V
    .locals 0

    .line 249
    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;->mDateTimePicker:Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;

    if-eqz p0, :cond_0

    .line 250
    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->updateDate(III)V

    :cond_0
    return-void
.end method

.method public updateDateTime(IIIII)V
    .locals 6

    .line 255
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;->mDateTimePicker:Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;

    if-eqz v0, :cond_0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 256
    invoke-virtual/range {v0 .. v5}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->updateDateTime(IIIII)V

    :cond_0
    return-void
.end method

.method public updateTime(II)V
    .locals 0

    .line 243
    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;->mDateTimePicker:Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;

    if-eqz p0, :cond_0

    .line 244
    invoke-virtual {p0, p1, p2}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->updateTime(II)V

    :cond_0
    return-void
.end method
