.class public Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;
.super Landroid/widget/LinearLayout;
.source "OSDateTimePicker.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$OnDateTimeChangeListener;
    }
.end annotation


# static fields
.field private static END_YEAR:I = 0x834

.field public static final FORMAT_H_M:Ljava/lang/String; = "HH:mm"

.field public static final FORMAT_M_D:Ljava/lang/String; = "MM-dd"

.field public static final FORMAT_M_D_H_M:Ljava/lang/String; = "MM-dd HH:mm"

.field public static final FORMAT_Y_M_D:Ljava/lang/String; = "yyyy-MM-dd"

.field public static final FORMAT_Y_M_D_H_M:Ljava/lang/String; = "yyyy-MM-dd HH:mm"

.field private static final OS_DIALOG_STANDARD_WIDTH_DP:I = 0x148

.field private static START_YEAR:I = 0x76c


# instance fields
.field private final DEFAULT_VISIBLE_ITEMS:I

.field private TAG:Ljava/lang/String;

.field private mAmPmList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCalendar:Ljava/util/Calendar;

.field private mContext:Landroid/content/Context;

.field private mDayWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

.field private mFormat:Ljava/lang/String;

.field private mFormatWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

.field private mHourWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

.field private mIs24Format:Z

.field private mMinuteWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

.field private mMonthDayWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

.field public mMonthList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMonthWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

.field private mOnDateTimeChangeListener:Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$OnDateTimeChangeListener;

.field private mOnDayChangedListener:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$OnWheelChangedListener;

.field private mOnFormatChangedListener:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$OnWheelChangedListener;

.field private mOnHourChangedListener:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$OnWheelChangedListener;

.field private mOnMinuteChangedListener:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$OnWheelChangedListener;

.field private mOnMonthChangedListener:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$OnWheelChangedListener;

.field private mOnMonthDayChangedLister:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$OnWheelChangedListener;

.field private mOnYearChangedListener:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$OnWheelChangedListener;

.field private mRequireRelayout:Z

.field private mSoundEffect:Z

.field private mVibrateRunnable:Ljava/lang/Runnable;

.field private mVibrator:Landroid/os/Vibrator;

.field private mYearWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;


# direct methods
.method public static synthetic $r8$lambda$DTeKjM_hvLHXGmIhsQ9Om1G-jrs(Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->lambda$init$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$VSRZPZp98NOKejn9vuafjgF6T14(Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->lambda$init$1()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 60
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 30
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mCalendar:Ljava/util/Calendar;

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mMonthList:Ljava/util/ArrayList;

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mAmPmList:Ljava/util/ArrayList;

    const/4 v0, 0x5

    .line 43
    iput v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->DEFAULT_VISIBLE_ITEMS:I

    .line 44
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->TAG:Ljava/lang/String;

    const/4 v0, 0x1

    .line 56
    iput-boolean v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mRequireRelayout:Z

    .line 905
    new-instance v0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$8;

    invoke-direct {v0, p0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$8;-><init>(Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;)V

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mVibrateRunnable:Ljava/lang/Runnable;

    .line 61
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 65
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mCalendar:Ljava/util/Calendar;

    .line 33
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mMonthList:Ljava/util/ArrayList;

    .line 34
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mAmPmList:Ljava/util/ArrayList;

    const/4 p2, 0x5

    .line 43
    iput p2, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->DEFAULT_VISIBLE_ITEMS:I

    .line 44
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->TAG:Ljava/lang/String;

    const/4 p2, 0x1

    .line 56
    iput-boolean p2, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mRequireRelayout:Z

    .line 905
    new-instance p2, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$8;

    invoke-direct {p2, p0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$8;-><init>(Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;)V

    iput-object p2, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mVibrateRunnable:Ljava/lang/Runnable;

    .line 66
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000()I
    .locals 1

    .line 28
    sget v0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->START_YEAR:I

    return v0
.end method

.method static synthetic access$100(Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;I)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->onYearChange(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->onVibrate()V

    return-void
.end method

.method static synthetic access$300(Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;I)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->onMonthChange(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;I)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->onDaysChange(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;)Ljava/util/Calendar;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mCalendar:Ljava/util/Calendar;

    return-object p0
.end method

.method static synthetic access$600(Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;IZ)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->updateMonthDayData(IZ)V

    return-void
.end method

.method static synthetic access$700(Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->change()V

    return-void
.end method

.method static synthetic access$800(Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;)Z
    .locals 0

    .line 28
    iget-boolean p0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mIs24Format:Z

    return p0
.end method

.method static synthetic access$900(Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->maybeVibrate()V

    return-void
.end method

.method private change()V
    .locals 2

    .line 613
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mOnDateTimeChangeListener:Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$OnDateTimeChangeListener;

    if-eqz v0, :cond_0

    .line 614
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mCalendar:Ljava/util/Calendar;

    invoke-interface {v0, p0, v1}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$OnDateTimeChangeListener;->onChange(Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;Ljava/util/Calendar;)V

    :cond_0
    return-void
.end method

.method private dp2px(I)I
    .locals 1

    int-to-float p1, p1

    .line 812
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mContext:Landroid/content/Context;

    .line 813
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    const/4 v0, 0x1

    .line 812
    invoke-static {v0, p1, p0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    float-to-int p0, p0

    return p0
.end method

.method private getRatioValue(I)I
    .locals 0

    int-to-float p1, p1

    .line 713
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->reCalculateRatio()F

    move-result p0

    mul-float/2addr p1, p0

    const/high16 p0, 0x3f000000    # 0.5f

    add-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method private initAndSetMargins()V
    .locals 3

    .line 103
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mFormat:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, -0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "MM-dd"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x4

    goto :goto_0

    :sswitch_1
    const-string v1, "HH:mm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x3

    goto :goto_0

    :sswitch_2
    const-string v1, "yyyy-MM-dd"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_3
    const-string v1, "MM-dd HH:mm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x1

    goto :goto_0

    :sswitch_4
    const-string v1, "yyyy-MM-dd HH:mm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v2, 0x0

    :goto_0
    packed-switch v2, :pswitch_data_0

    goto :goto_1

    .line 123
    :pswitch_0
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->initMonthWheel()V

    .line 124
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->initDayWheel()V

    goto :goto_1

    .line 127
    :pswitch_1
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->initHourWheel()V

    .line 128
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->initMinuteWheel()V

    goto :goto_1

    .line 113
    :pswitch_2
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->initYearWheel()V

    .line 114
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->initMonthWheel()V

    .line 115
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->initDayWheel()V

    goto :goto_1

    .line 118
    :pswitch_3
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->initMonthDayWheel()V

    .line 119
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->initHourWheel()V

    .line 120
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->initMinuteWheel()V

    goto :goto_1

    .line 106
    :pswitch_4
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->initYearWheel()V

    .line 107
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->initMonthWheel()V

    .line 108
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->initDayWheel()V

    .line 109
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->initHourWheel()V

    .line 110
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->initMinuteWheel()V

    .line 134
    :goto_1
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->updateMargins()V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x45dc2bc6 -> :sswitch_4
        -0x347fb3b9 -> :sswitch_3
        -0x985fe00 -> :sswitch_2
        0x4183e5a -> :sswitch_1
        0x460c7cd -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private initDayWheel()V
    .locals 6

    .line 224
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mCalendar:Ljava/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 225
    sget v2, Lcom/transsion/widgetslib/R$id;->dayWheel:I

    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    iput-object v2, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mDayWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    const/4 v3, 0x0

    .line 226
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 228
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x1

    move v4, v3

    .line 229
    :goto_0
    iget-object v5, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v5, v1}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v5

    add-int/2addr v5, v3

    if-ge v4, v5, :cond_0

    .line 230
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 232
    :cond_0
    iget-object v4, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mDayWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {v4, v2}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setData(Ljava/util/List;)V

    .line 233
    iget-object v2, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mDayWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {v2, v1}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setVisibleItems(I)V

    .line 234
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mDayWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {v1, v3}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setCyclic(Z)V

    .line 235
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mDayWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    sub-int/2addr v0, v3

    invoke-virtual {v1, v0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setSelectedItemPosition(I)V

    .line 236
    new-instance v0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$3;

    invoke-direct {v0, p0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$3;-><init>(Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;)V

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mOnDayChangedListener:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$OnWheelChangedListener;

    .line 282
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mDayWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setOnWheelChangedListener(Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$OnWheelChangedListener;)V

    return-void
.end method

.method private initHourWheel()V
    .locals 6

    .line 410
    sget v0, Lcom/transsion/widgetslib/R$id;->hourWheel:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mHourWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    const/4 v1, 0x0

    .line 411
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 412
    sget v0, Lcom/transsion/widgetslib/R$id;->formatWheel:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mFormatWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    .line 413
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/transsion/widgetslib/util/Utils;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mIs24Format:Z

    .line 414
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mHourWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setHourWheel(Z)V

    .line 415
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mHourWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    iget-boolean v3, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mIs24Format:Z

    invoke-virtual {v0, v3}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->set24HoursFormat(Z)V

    .line 416
    iget-boolean v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mIs24Format:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mCalendar:Ljava/util/Calendar;

    const/16 v3, 0xb

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mCalendar:Ljava/util/Calendar;

    const/16 v3, 0xa

    :goto_0
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 417
    iget-boolean v3, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mIs24Format:Z

    if-eqz v3, :cond_2

    .line 418
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    :goto_1
    const/16 v4, 0x18

    if-ge v1, v4, :cond_1

    .line 420
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 422
    :cond_1
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mHourWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {v1, v3}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setData(Ljava/util/List;)V

    .line 423
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mHourWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {v1, v0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setSelectedItemPosition(I)V

    goto :goto_3

    .line 425
    :cond_2
    iget-object v3, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mAmPmList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 426
    iget-object v3, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mAmPmList:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mContext:Landroid/content/Context;

    sget v5, Lcom/transsion/widgetslib/R$string;->am:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 427
    iget-object v3, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mAmPmList:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mContext:Landroid/content/Context;

    sget v5, Lcom/transsion/widgetslib/R$string;->pm:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 429
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move v4, v2

    :goto_2
    const/16 v5, 0xd

    if-ge v4, v5, :cond_3

    .line 431
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 433
    :cond_3
    iget-object v4, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mHourWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {v4, v3}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setData(Ljava/util/List;)V

    .line 434
    iget-object v3, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mHourWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    add-int/lit8 v0, v0, 0xc

    sub-int/2addr v0, v2

    rem-int/lit8 v0, v0, 0xc

    invoke-virtual {v3, v0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setSelectedItemPosition(I)V

    .line 436
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mCalendar:Ljava/util/Calendar;

    const/16 v3, 0x9

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 437
    iget-object v3, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mFormatWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    iget-object v4, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mAmPmList:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setData(Ljava/util/List;)V

    .line 438
    iget-object v3, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mFormatWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setVisibleItems(I)V

    .line 439
    iget-object v3, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mFormatWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {v3, v1}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setCyclic(Z)V

    .line 440
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mFormatWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {v1, v0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setSelectedItemPosition(I)V

    .line 441
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mFormatWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {v0, v2}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setAmPmWheel(Z)V

    .line 442
    new-instance v0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$5;

    invoke-direct {v0, p0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$5;-><init>(Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;)V

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mOnFormatChangedListener:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$OnWheelChangedListener;

    .line 462
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mFormatWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {v1, v0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setOnWheelChangedListener(Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$OnWheelChangedListener;)V

    .line 464
    :goto_3
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mHourWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setVisibleItems(I)V

    .line 465
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mHourWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {v0, v2}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setCyclic(Z)V

    .line 466
    new-instance v0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$6;

    invoke-direct {v0, p0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$6;-><init>(Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;)V

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mOnHourChangedListener:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$OnWheelChangedListener;

    .line 493
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mHourWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setOnWheelChangedListener(Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$OnWheelChangedListener;)V

    return-void
.end method

.method private initMinuteWheel()V
    .locals 4

    .line 505
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mCalendar:Ljava/util/Calendar;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 507
    sget v1, Lcom/transsion/widgetslib/R$id;->minWheel:I

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    iput-object v1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mMinuteWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    const/4 v2, 0x0

    .line 508
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 509
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    const/16 v3, 0x3c

    if-ge v2, v3, :cond_0

    .line 511
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 513
    :cond_0
    iget-object v2, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mMinuteWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setMinuteWheel(Z)V

    .line 514
    iget-object v2, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mMinuteWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {v2, v1}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setData(Ljava/util/List;)V

    .line 515
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mMinuteWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {v1, v0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setSelectedItemPosition(I)V

    .line 516
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mMinuteWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setVisibleItems(I)V

    .line 517
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mMinuteWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {v0, v3}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setCyclic(Z)V

    .line 518
    new-instance v0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$7;

    invoke-direct {v0, p0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$7;-><init>(Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;)V

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mOnMinuteChangedListener:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$OnWheelChangedListener;

    .line 538
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mMinuteWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setOnWheelChangedListener(Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$OnWheelChangedListener;)V

    return-void
.end method

.method private initMonthDayWheel()V
    .locals 6

    .line 332
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->initMonthList()V

    .line 333
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mCalendar:Ljava/util/Calendar;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 334
    sget v2, Lcom/transsion/widgetslib/R$id;->monthDayWheel:I

    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    iput-object v2, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mMonthDayWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    const/4 v3, 0x0

    .line 335
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 336
    iget-object v2, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mMonthDayWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    iget-object v3, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mCalendar:Ljava/util/Calendar;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setYearDays(Ljava/util/Calendar;Z)V

    .line 337
    iget-object v2, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mMonthDayWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    iget-object v3, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mMonthList:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setMonthList(Ljava/util/List;)V

    .line 339
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move v3, v4

    .line 340
    :goto_0
    iget-object v5, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v5, v1}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v5

    add-int/2addr v5, v4

    if-ge v3, v5, :cond_0

    .line 341
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 343
    :cond_0
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mMonthDayWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {v1, v2}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setData(Ljava/util/List;)V

    .line 344
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mMonthDayWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setVisibleItems(I)V

    .line 345
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mMonthDayWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {v1, v4}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setCyclic(Z)V

    .line 346
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mMonthDayWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    sub-int/2addr v0, v4

    invoke-virtual {v1, v0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setSelectedItemPosition(I)V

    .line 347
    new-instance v0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$4;

    invoke-direct {v0, p0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$4;-><init>(Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;)V

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mOnMonthDayChangedLister:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$OnWheelChangedListener;

    .line 381
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mMonthDayWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setOnWheelChangedListener(Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$OnWheelChangedListener;)V

    return-void
.end method

.method private initMonthList()V
    .locals 3

    .line 560
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 561
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mMonthList:Ljava/util/ArrayList;

    sget v2, Lcom/transsion/widgetslib/R$string;->jan:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 562
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mMonthList:Ljava/util/ArrayList;

    sget v2, Lcom/transsion/widgetslib/R$string;->feb:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 563
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mMonthList:Ljava/util/ArrayList;

    sget v2, Lcom/transsion/widgetslib/R$string;->mar:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 564
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mMonthList:Ljava/util/ArrayList;

    sget v2, Lcom/transsion/widgetslib/R$string;->apr:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 565
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mMonthList:Ljava/util/ArrayList;

    sget v2, Lcom/transsion/widgetslib/R$string;->may:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 566
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mMonthList:Ljava/util/ArrayList;

    sget v2, Lcom/transsion/widgetslib/R$string;->jun:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 567
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mMonthList:Ljava/util/ArrayList;

    sget v2, Lcom/transsion/widgetslib/R$string;->jul:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 568
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mMonthList:Ljava/util/ArrayList;

    sget v2, Lcom/transsion/widgetslib/R$string;->aug:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 569
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mMonthList:Ljava/util/ArrayList;

    sget v2, Lcom/transsion/widgetslib/R$string;->sep:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 570
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mMonthList:Ljava/util/ArrayList;

    sget v2, Lcom/transsion/widgetslib/R$string;->oct:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 571
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mMonthList:Ljava/util/ArrayList;

    sget v2, Lcom/transsion/widgetslib/R$string;->nov:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 572
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mMonthList:Ljava/util/ArrayList;

    sget v1, Lcom/transsion/widgetslib/R$string;->dec:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private initMonthWheel()V
    .locals 3

    .line 182
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mCalendar:Ljava/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 183
    sget v1, Lcom/transsion/widgetslib/R$id;->monthWheel:I

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    iput-object v1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mMonthWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    const/4 v2, 0x0

    .line 184
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 185
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->initMonthList()V

    .line 187
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mMonthWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    iget-object v2, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mMonthList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setData(Ljava/util/List;)V

    .line 188
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mMonthWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setVisibleItems(I)V

    .line 189
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mMonthWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setCyclic(Z)V

    .line 190
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mMonthWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {v1, v0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setSelectedItemPosition(I)V

    .line 191
    new-instance v0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$2;

    invoke-direct {v0, p0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$2;-><init>(Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;)V

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mOnMonthChangedListener:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$OnWheelChangedListener;

    .line 211
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mMonthWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setOnWheelChangedListener(Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$OnWheelChangedListener;)V

    return-void
.end method

.method private initYearWheel()V
    .locals 6

    .line 138
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mCalendar:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 139
    sget v2, Lcom/transsion/widgetslib/R$id;->yearWheel:I

    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    iput-object v2, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mYearWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    const/4 v3, 0x0

    .line 140
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 141
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 143
    sget v4, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->START_YEAR:I

    :goto_0
    sget v5, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->END_YEAR:I

    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    add-int/2addr v5, v1

    if-ge v4, v5, :cond_0

    .line 144
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 146
    :cond_0
    iget-object v4, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mYearWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {v4, v2}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setData(Ljava/util/List;)V

    .line 147
    iget-object v2, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mYearWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    const/4 v4, 0x5

    invoke-virtual {v2, v4}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setVisibleItems(I)V

    .line 148
    iget-object v2, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mYearWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {v2, v1}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setCyclic(Z)V

    .line 149
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mYearWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    sget v2, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->START_YEAR:I

    if-le v0, v2, :cond_1

    sub-int v3, v0, v2

    :cond_1
    invoke-virtual {v1, v3}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setSelectedItemPosition(I)V

    .line 150
    new-instance v0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$1;

    invoke-direct {v0, p0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$1;-><init>(Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;)V

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mOnYearChangedListener:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$OnWheelChangedListener;

    .line 170
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mYearWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setOnWheelChangedListener(Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$OnWheelChangedListener;)V

    return-void
.end method

.method private synthetic lambda$init$0()V
    .locals 1

    .line 85
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->isRequireRelayout()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->updateMargins()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$init$1()V
    .locals 1

    .line 92
    sget v0, Lcom/transsion/widgetslib/R$id;->os_wheels_parent:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 94
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method private maybeVibrate()V
    .locals 3

    .line 913
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "haptic_feedback_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    if-nez v2, :cond_1

    .line 914
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mVibrator:Landroid/os/Vibrator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 915
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    .line 916
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mVibrator:Landroid/os/Vibrator;

    const/4 v0, 0x2

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Landroid/os/Vibrator;->vibrate([JI)V

    :cond_1
    return-void

    :array_0
    .array-data 8
        0x0
        0x28
    .end array-data
.end method

.method private onDaysChange(I)V
    .locals 2

    .line 294
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mCalendar:Ljava/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    .line 295
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->change()V

    return-void
.end method

.method private onMonthChange(I)V
    .locals 4

    .line 299
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x5

    const/4 v2, 0x1

    .line 300
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 301
    iget-object v3, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v3, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->set(II)V

    const/4 v2, 0x2

    .line 302
    invoke-virtual {v0, v2, p1}, Ljava/util/Calendar;->set(II)V

    .line 304
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v0

    .line 305
    iget-object v3, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v3, v1}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 308
    iget-object v3, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v3, v1, v0}, Ljava/util/Calendar;->set(II)V

    .line 311
    :cond_0
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v0, v2, p1}, Ljava/util/Calendar;->set(II)V

    .line 312
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->updateDaysWheel()V

    .line 313
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->change()V

    return-void
.end method

.method private onVibrate()V
    .locals 3

    .line 899
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 900
    sget-boolean v1, Lcom/transsion/widgetslib/util/Utils;->IS_4D_VIBRATE_SUPPORT:Z

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mVibrateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 901
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mVibrateRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x32

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method private onYearChange(I)V
    .locals 4

    .line 317
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x1

    .line 318
    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    .line 319
    iget-object v2, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mCalendar:Ljava/util/Calendar;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v0, v3, v2}, Ljava/util/Calendar;->set(II)V

    const/4 v2, 0x5

    .line 320
    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 321
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v0

    .line 322
    iget-object v3, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mDayWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {v3}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->getSelectedItemPosition()I

    move-result v3

    add-int/2addr v3, v1

    if-ge v0, v3, :cond_0

    .line 324
    iget-object v3, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v3, v2, v0}, Ljava/util/Calendar;->set(II)V

    .line 326
    :cond_0
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    .line 327
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->updateDaysWheel()V

    .line 328
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->change()V

    return-void
.end method

.method private reCalculateRatio()F
    .locals 1

    .line 717
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result p0

    invoke-static {v0, p0}, Lcom/transsion/widgetslib/util/Utils;->px2dp(Landroid/content/Context;I)I

    move-result p0

    int-to-float p0, p0

    const/high16 v0, 0x43a40000    # 328.0f

    div-float/2addr p0, v0

    return p0
.end method

.method private refreshUI()V
    .locals 1

    .line 883
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->initAndSetMargins()V

    .line 884
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mOnDateTimeChangeListener:Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$OnDateTimeChangeListener;

    if-eqz v0, :cond_0

    .line 885
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->change()V

    :cond_0
    return-void
.end method

.method private releaseDayWheel()V
    .locals 2

    .line 286
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mDayWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    if-eqz v0, :cond_0

    .line 287
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mOnDayChangedListener:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$OnWheelChangedListener;

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setOnWheelChangedListener(Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$OnWheelChangedListener;)V

    const/4 v0, 0x0

    .line 288
    iput-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mOnDayChangedListener:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$OnWheelChangedListener;

    .line 289
    iput-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mDayWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    :cond_0
    return-void
.end method

.method private releaseFormatWheel()V
    .locals 2

    .line 550
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mFormatWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    if-eqz v0, :cond_0

    .line 551
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mAmPmList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 552
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mFormatWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mOnFormatChangedListener:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$OnWheelChangedListener;

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setOnWheelChangedListener(Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$OnWheelChangedListener;)V

    const/4 v0, 0x0

    .line 553
    iput-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mOnFormatChangedListener:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$OnWheelChangedListener;

    .line 554
    iput-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mFormatWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    :cond_0
    return-void
.end method

.method private releaseHourWheel()V
    .locals 2

    .line 497
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mHourWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    if-eqz v0, :cond_0

    .line 498
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mOnHourChangedListener:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$OnWheelChangedListener;

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setOnWheelChangedListener(Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$OnWheelChangedListener;)V

    const/4 v0, 0x0

    .line 499
    iput-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mOnHourChangedListener:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$OnWheelChangedListener;

    .line 500
    iput-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mHourWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    :cond_0
    return-void
.end method

.method private releaseMinuteWheel()V
    .locals 2

    .line 542
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mMinuteWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    if-eqz v0, :cond_0

    .line 543
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mOnMinuteChangedListener:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$OnWheelChangedListener;

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setOnWheelChangedListener(Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$OnWheelChangedListener;)V

    const/4 v0, 0x0

    .line 544
    iput-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mOnMinuteChangedListener:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$OnWheelChangedListener;

    .line 545
    iput-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mMinuteWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    :cond_0
    return-void
.end method

.method private releaseMonthDayWheel()V
    .locals 2

    .line 385
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mMonthDayWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    if-eqz v0, :cond_0

    .line 386
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mOnMonthDayChangedLister:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$OnWheelChangedListener;

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setOnWheelChangedListener(Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$OnWheelChangedListener;)V

    const/4 v0, 0x0

    .line 387
    iput-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mOnMonthDayChangedLister:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$OnWheelChangedListener;

    .line 388
    iput-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mMonthDayWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    :cond_0
    return-void
.end method

.method private releaseMonthWheel()V
    .locals 2

    .line 215
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mMonthWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    if-eqz v0, :cond_0

    .line 216
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mOnMonthChangedListener:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$OnWheelChangedListener;

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setOnWheelChangedListener(Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$OnWheelChangedListener;)V

    const/4 v0, 0x0

    .line 217
    iput-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mOnMonthChangedListener:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$OnWheelChangedListener;

    .line 218
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mMonthList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 219
    iput-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mMonthWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    :cond_0
    return-void
.end method

.method private releaseYearWheel()V
    .locals 2

    .line 174
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mYearWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    if-eqz v0, :cond_0

    .line 175
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mOnYearChangedListener:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$OnWheelChangedListener;

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setOnWheelChangedListener(Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$OnWheelChangedListener;)V

    const/4 v0, 0x0

    .line 176
    iput-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mOnYearChangedListener:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$OnWheelChangedListener;

    .line 177
    iput-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mYearWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    :cond_0
    return-void
.end method

.method private setWheelBackground(Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;I)V
    .locals 0

    if-eqz p1, :cond_0

    .line 834
    invoke-virtual {p1, p2}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setWheelBackgroundColor(I)V

    :cond_0
    return-void
.end method

.method private updateDaysWheel()V
    .locals 6

    .line 581
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mDayWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    if-eqz v0, :cond_2

    .line 582
    invoke-virtual {v0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->getSelectedItemPosition()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    .line 583
    iget-object v2, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mCalendar:Ljava/util/Calendar;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v2

    .line 584
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move v4, v1

    :goto_0
    add-int/lit8 v5, v2, 0x1

    if-ge v4, v5, :cond_0

    .line 586
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 588
    :cond_0
    iget-object v4, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mDayWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {v4, v3}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setData(Ljava/util/List;)V

    if-ge v0, v2, :cond_1

    .line 590
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mDayWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setSelectedItemPosition(I)V

    goto :goto_1

    .line 592
    :cond_1
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mDayWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    sub-int/2addr v2, v1

    invoke-virtual {p0, v2}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setSelectedItemPosition(I)V

    :cond_2
    :goto_1
    return-void
.end method

.method private updateMonthDayData(IZ)V
    .locals 3

    .line 393
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mCalendar:Ljava/util/Calendar;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->getMinimum(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 394
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mCalendar:Ljava/util/Calendar;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, p1}, Ljava/util/Calendar;->set(II)V

    .line 395
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mCalendar:Ljava/util/Calendar;

    if-eqz p2, :cond_0

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result p2

    goto :goto_0

    .line 396
    :cond_0
    invoke-virtual {p1, v1}, Ljava/util/Calendar;->getMinimum(I)I

    move-result p2

    .line 395
    :goto_0
    invoke-virtual {p1, v1, p2}, Ljava/util/Calendar;->set(II)V

    .line 398
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    move p2, v2

    .line 399
    :goto_1
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v0

    add-int/2addr v0, v2

    if-ge p2, v0, :cond_1

    .line 400
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 402
    :cond_1
    iget-object p2, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mMonthDayWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {p2, p1}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setData(Ljava/util/List;)V

    .line 403
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    .line 404
    iget-object p2, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mMonthDayWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setOnWheelChangedListener(Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$OnWheelChangedListener;)V

    .line 405
    iget-object p2, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mMonthDayWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    sub-int/2addr p1, v2

    invoke-virtual {p2, p1}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setSelectedItemPosition(I)V

    .line 406
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mMonthDayWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mOnMonthDayChangedLister:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$OnWheelChangedListener;

    invoke-virtual {p1, p0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setOnWheelChangedListener(Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$OnWheelChangedListener;)V

    return-void
.end method


# virtual methods
.method public init(Ljava/lang/String;)V
    .locals 2

    .line 75
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mFormat:Ljava/lang/String;

    .line 76
    invoke-static {}, Lcom/transsion/widgetslib/util/Utils;->isRtl()Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 77
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v1, Lcom/transsion/widgetslib/R$layout;->os_picker_date_layout_rtl:I

    invoke-virtual {p1, v1, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto :goto_0

    .line 79
    :cond_0
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v1, Lcom/transsion/widgetslib/R$layout;->os_picker_date_layout:I

    invoke-virtual {p1, v1, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 82
    :goto_0
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->initAndSetMargins()V

    .line 83
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mContext:Landroid/content/Context;

    const-string v0, "vibrator"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Vibrator;

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mVibrator:Landroid/os/Vibrator;

    .line 84
    new-instance p1, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;)V

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    .line 91
    new-instance p1, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;)V

    const-wide/16 v0, 0x3c

    invoke-virtual {p0, p1, v0, v1}, Landroid/widget/LinearLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 99
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method public init(Ljava/util/Calendar;Ljava/lang/String;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mCalendar:Ljava/util/Calendar;

    .line 71
    invoke-virtual {p0, p2}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->init(Ljava/lang/String;)V

    return-void
.end method

.method public is24Format()Z
    .locals 0

    .line 624
    iget-boolean p0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mIs24Format:Z

    return p0
.end method

.method public isRequireRelayout()Z
    .locals 0

    .line 49
    iget-boolean p0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mRequireRelayout:Z

    return p0
.end method

.method public isSoundEffect()Z
    .locals 0

    .line 605
    iget-boolean p0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mSoundEffect:Z

    return p0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 922
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 923
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method public onGlobalLayout()V
    .locals 1

    .line 599
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->isRequireRelayout()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 600
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->updateMargins()V

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 577
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    return-void
.end method

.method public release()V
    .locals 0

    .line 873
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->releaseYearWheel()V

    .line 874
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->releaseMonthWheel()V

    .line 875
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->releaseDayWheel()V

    .line 876
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->releaseMonthDayWheel()V

    .line 877
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->releaseHourWheel()V

    .line 878
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->releaseMinuteWheel()V

    .line 879
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->releaseFormatWheel()V

    return-void
.end method

.method public setMarginStart(IIIIIII)V
    .locals 1

    .line 722
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mMonthWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0}, Landroid/widget/LinearLayout$LayoutParams;->getMarginStart()I

    move-result v0

    if-eq v0, p2, :cond_0

    .line 723
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mMonthWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 724
    invoke-virtual {v0, p2}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    .line 725
    iget-object p2, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mMonthWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {p2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 728
    :cond_0
    iget-object p2, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mDayWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    if-eqz p2, :cond_1

    if-eqz p3, :cond_1

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p2}, Landroid/widget/LinearLayout$LayoutParams;->getMarginStart()I

    move-result p2

    if-eq p2, p3, :cond_1

    .line 729
    iget-object p2, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mDayWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout$LayoutParams;

    .line 730
    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    .line 731
    iget-object p3, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mDayWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {p3, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 734
    :cond_1
    iget-object p2, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mMonthDayWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    if-eqz p2, :cond_2

    if-eqz p4, :cond_2

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p2}, Landroid/widget/LinearLayout$LayoutParams;->getMarginStart()I

    move-result p2

    if-eq p2, p4, :cond_2

    .line 735
    iget-object p2, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mMonthDayWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout$LayoutParams;

    .line 736
    invoke-virtual {p2, p4}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    .line 737
    iget-object p3, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mMonthDayWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {p3, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 740
    :cond_2
    iget-object p2, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mYearWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    if-eqz p2, :cond_3

    if-eqz p1, :cond_3

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p2}, Landroid/widget/LinearLayout$LayoutParams;->getMarginStart()I

    move-result p2

    if-eq p2, p1, :cond_3

    .line 741
    iget-object p2, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mYearWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout$LayoutParams;

    .line 742
    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    .line 743
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mYearWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 746
    :cond_3
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mHourWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    if-eqz p1, :cond_4

    if-eqz p5, :cond_4

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p1}, Landroid/widget/LinearLayout$LayoutParams;->getMarginStart()I

    move-result p1

    if-eq p1, p5, :cond_4

    .line 747
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mHourWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 748
    invoke-virtual {p1, p5}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    .line 749
    iget-object p2, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mHourWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 752
    :cond_4
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mMinuteWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    if-eqz p1, :cond_5

    if-eqz p6, :cond_5

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p1}, Landroid/widget/LinearLayout$LayoutParams;->getMarginStart()I

    move-result p1

    if-eq p1, p6, :cond_5

    .line 753
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mMinuteWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 754
    invoke-virtual {p1, p6}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    .line 755
    iget-object p2, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mMinuteWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 758
    :cond_5
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mFormatWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    if-eqz p1, :cond_6

    if-eqz p7, :cond_6

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p1}, Landroid/widget/LinearLayout$LayoutParams;->getMarginStart()I

    move-result p1

    if-eq p1, p7, :cond_6

    .line 759
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mFormatWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 760
    invoke-virtual {p1, p7}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    .line 761
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mFormatWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_6
    return-void
.end method

.method public setOnDateChangeListener(Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$OnDateTimeChangeListener;)V
    .locals 0

    .line 619
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mOnDateTimeChangeListener:Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$OnDateTimeChangeListener;

    .line 620
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->change()V

    return-void
.end method

.method public setRequireRelayout(Z)V
    .locals 0

    .line 53
    iput-boolean p1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mRequireRelayout:Z

    return-void
.end method

.method public setSoundEffect(Z)V
    .locals 1

    .line 952
    iput-boolean p1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mSoundEffect:Z

    .line 953
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mMinuteWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    if-eqz v0, :cond_0

    .line 954
    invoke-virtual {v0, p1}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setSoundEffect(Z)V

    .line 956
    :cond_0
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mHourWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    if-eqz v0, :cond_1

    .line 957
    invoke-virtual {v0, p1}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setSoundEffect(Z)V

    .line 959
    :cond_1
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mDayWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    if-eqz v0, :cond_2

    .line 960
    invoke-virtual {v0, p1}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setSoundEffect(Z)V

    .line 962
    :cond_2
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mMonthWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    if-eqz v0, :cond_3

    .line 963
    invoke-virtual {v0, p1}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setSoundEffect(Z)V

    .line 965
    :cond_3
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mYearWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    if-eqz v0, :cond_4

    .line 966
    invoke-virtual {v0, p1}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setSoundEffect(Z)V

    .line 968
    :cond_4
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mMonthDayWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    if-eqz v0, :cond_5

    .line 969
    invoke-virtual {v0, p1}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setSoundEffect(Z)V

    .line 971
    :cond_5
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mFormatWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    if-eqz p0, :cond_6

    .line 972
    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setSoundEffect(Z)V

    :cond_6
    return-void
.end method

.method public setSoundEffectResource(I)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ResourceType"
        }
    .end annotation

    .line 928
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mMinuteWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    if-eqz v0, :cond_0

    .line 929
    invoke-virtual {v0, p1}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setSoundEffectResource(I)V

    .line 931
    :cond_0
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mHourWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    if-eqz v0, :cond_1

    .line 932
    invoke-virtual {v0, p1}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setSoundEffectResource(I)V

    .line 934
    :cond_1
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mDayWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    if-eqz v0, :cond_2

    .line 935
    invoke-virtual {v0, p1}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setSoundEffectResource(I)V

    .line 937
    :cond_2
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mMonthWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    if-eqz v0, :cond_3

    .line 938
    invoke-virtual {v0, p1}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setSoundEffectResource(I)V

    .line 940
    :cond_3
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mYearWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    if-eqz v0, :cond_4

    .line 941
    invoke-virtual {v0, p1}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setSoundEffectResource(I)V

    .line 943
    :cond_4
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mMonthDayWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    if-eqz v0, :cond_5

    .line 944
    invoke-virtual {v0, p1}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setSoundEffectResource(I)V

    .line 946
    :cond_5
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mFormatWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    if-eqz p0, :cond_6

    .line 947
    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setSoundEffectResource(I)V

    :cond_6
    return-void
.end method

.method public setWheelBackgroundColor(I)V
    .locals 1

    .line 823
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mYearWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-direct {p0, v0, p1}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->setWheelBackground(Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;I)V

    .line 824
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mMonthWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-direct {p0, v0, p1}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->setWheelBackground(Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;I)V

    .line 825
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mDayWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-direct {p0, v0, p1}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->setWheelBackground(Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;I)V

    .line 826
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mMonthDayWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-direct {p0, v0, p1}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->setWheelBackground(Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;I)V

    .line 827
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mFormatWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-direct {p0, v0, p1}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->setWheelBackground(Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;I)V

    .line 828
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mHourWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-direct {p0, v0, p1}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->setWheelBackground(Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;I)V

    .line 829
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mMinuteWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-direct {p0, v0, p1}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->setWheelBackground(Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;I)V

    return-void
.end method

.method public setWheelBackgroundColorRes(I)V
    .locals 1

    .line 817
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 818
    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->setWheelBackgroundColor(I)V

    :cond_0
    return-void
.end method

.method public setWheelWidth()V
    .locals 3

    .line 767
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/widgetslib/R$dimen;->picker_wheel_width_month:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 768
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mMonthWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    if-eqz v1, :cond_0

    invoke-direct {p0, v0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->getRatioValue(I)I

    move-result v1

    iget-object v2, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mMonthWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 769
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mMonthWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 770
    invoke-direct {p0, v0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->getRatioValue(I)I

    move-result v0

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 771
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mMonthWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 773
    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/widgetslib/R$dimen;->picker_wheel_width_day:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 774
    iget-object v2, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mDayWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    if-eqz v2, :cond_1

    invoke-direct {p0, v0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->getRatioValue(I)I

    move-result v0

    iget-object v2, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mDayWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    if-eq v0, v2, :cond_1

    .line 775
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mDayWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 776
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->getRatioValue(I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 777
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mDayWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 779
    :cond_1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/widgetslib/R$dimen;->picker_wheel_width_month_day:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 780
    iget-object v2, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mMonthDayWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    if-eqz v2, :cond_2

    invoke-direct {p0, v0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->getRatioValue(I)I

    move-result v0

    iget-object v2, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mMonthDayWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    if-eq v0, v2, :cond_2

    .line 781
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mMonthDayWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 782
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->getRatioValue(I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 783
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mMonthDayWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 785
    :cond_2
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/widgetslib/R$dimen;->picker_wheel_width_year:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 786
    iget-object v2, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mYearWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    if-eqz v2, :cond_3

    invoke-direct {p0, v0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->getRatioValue(I)I

    move-result v0

    iget-object v2, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mYearWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    if-eq v0, v2, :cond_3

    .line 787
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mYearWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 788
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->getRatioValue(I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 789
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mYearWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 791
    :cond_3
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/widgetslib/R$dimen;->picker_wheel_width_hour:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 792
    iget-object v2, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mHourWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    if-eqz v2, :cond_4

    invoke-direct {p0, v0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->getRatioValue(I)I

    move-result v0

    iget-object v2, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mHourWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    if-eq v0, v2, :cond_4

    .line 793
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mHourWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 794
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->getRatioValue(I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 795
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mHourWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 797
    :cond_4
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/widgetslib/R$dimen;->picker_wheel_width_minute:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 798
    iget-object v2, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mMinuteWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    if-eqz v2, :cond_5

    invoke-direct {p0, v0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->getRatioValue(I)I

    move-result v0

    iget-object v2, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mMinuteWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    if-eq v0, v2, :cond_5

    .line 799
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mMinuteWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 800
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->getRatioValue(I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 801
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mMinuteWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 803
    :cond_5
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/widgetslib/R$dimen;->picker_wheel_width_format:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 804
    iget-object v2, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mFormatWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    if-eqz v2, :cond_6

    invoke-direct {p0, v0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->getRatioValue(I)I

    move-result v0

    iget-object v2, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mFormatWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    if-eq v0, v2, :cond_6

    .line 805
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mFormatWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 806
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->getRatioValue(I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 807
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mFormatWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_6
    return-void
.end method

.method public setYearDuration(II)V
    .locals 0

    if-ge p2, p1, :cond_0

    return-void

    .line 893
    :cond_0
    sput p1, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->START_YEAR:I

    .line 894
    sput p2, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->END_YEAR:I

    return-void
.end method

.method public updateDate(III)V
    .locals 2

    .line 849
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mCalendar:Ljava/util/Calendar;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 850
    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    .line 851
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mCalendar:Ljava/util/Calendar;

    const/4 v0, 0x2

    invoke-virtual {p1, v0, p2}, Ljava/util/Calendar;->set(II)V

    .line 852
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mCalendar:Ljava/util/Calendar;

    const/4 p2, 0x5

    invoke-virtual {p1, p2, p3}, Ljava/util/Calendar;->set(II)V

    .line 854
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->release()V

    .line 855
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->refreshUI()V

    :cond_0
    return-void
.end method

.method public updateDateTime(IIIII)V
    .locals 2

    .line 860
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mCalendar:Ljava/util/Calendar;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 861
    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    .line 862
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mCalendar:Ljava/util/Calendar;

    const/4 v0, 0x2

    invoke-virtual {p1, v0, p2}, Ljava/util/Calendar;->set(II)V

    .line 863
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mCalendar:Ljava/util/Calendar;

    const/4 p2, 0x5

    invoke-virtual {p1, p2, p3}, Ljava/util/Calendar;->set(II)V

    .line 864
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mCalendar:Ljava/util/Calendar;

    const/16 p2, 0xb

    invoke-virtual {p1, p2, p4}, Ljava/util/Calendar;->set(II)V

    .line 865
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mCalendar:Ljava/util/Calendar;

    const/16 p2, 0xc

    invoke-virtual {p1, p2, p5}, Ljava/util/Calendar;->set(II)V

    .line 867
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->release()V

    .line 868
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->refreshUI()V

    :cond_0
    return-void
.end method

.method public updateMargins()V
    .locals 8

    .line 629
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mFormat:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "HH:mm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    goto :goto_0

    :sswitch_1
    const-string v1, "yyyy-MM-dd"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x1

    goto :goto_0

    :sswitch_2
    const-string v1, "MM-dd HH:mm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    move v3, v2

    :goto_0
    const/16 v0, 0x10

    const/16 v1, 0x24

    const/16 v4, 0x8

    packed-switch v3, :pswitch_data_0

    move v1, v2

    move v3, v1

    move v4, v3

    move v5, v4

    move v6, v5

    move v7, v6

    goto/16 :goto_5

    .line 677
    :pswitch_0
    invoke-static {}, Lcom/transsion/widgetslib/util/Utils;->isRtl()Z

    move-result v0

    const/16 v1, 0x48

    const/16 v3, 0x58

    const/16 v5, 0x38

    const/16 v6, 0x28

    if-eqz v0, :cond_4

    .line 678
    iget-boolean v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mIs24Format:Z

    if-eqz v0, :cond_3

    .line 679
    invoke-direct {p0, v1}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->dp2px(I)I

    move-result v0

    .line 680
    invoke-direct {p0, v3}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->dp2px(I)I

    move-result v1

    .line 681
    iget-object v3, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mFormatWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 683
    :cond_3
    invoke-direct {p0, v5}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->dp2px(I)I

    move-result v0

    .line 684
    invoke-direct {p0, v6}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->dp2px(I)I

    move-result v1

    .line 685
    invoke-direct {p0, v6}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->dp2px(I)I

    move-result v3

    .line 686
    iget-object v4, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mFormatWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 689
    :cond_4
    iget-boolean v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mIs24Format:Z

    if-eqz v0, :cond_5

    .line 690
    invoke-direct {p0, v3}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->dp2px(I)I

    move-result v0

    .line 691
    invoke-direct {p0, v1}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->dp2px(I)I

    move-result v1

    .line 692
    iget-object v3, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mFormatWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    move v5, v0

    move v6, v1

    move v1, v2

    move v3, v1

    move v4, v3

    move v7, v4

    goto/16 :goto_5

    .line 694
    :cond_5
    invoke-direct {p0, v6}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->dp2px(I)I

    move-result v0

    .line 695
    invoke-direct {p0, v5}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->dp2px(I)I

    move-result v1

    .line 696
    invoke-direct {p0, v6}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->dp2px(I)I

    move-result v3

    .line 697
    iget-object v4, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mFormatWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    move v5, v0

    move v6, v1

    move v1, v2

    move v4, v1

    move v7, v3

    move v3, v4

    goto/16 :goto_5

    .line 634
    :pswitch_1
    invoke-static {}, Lcom/transsion/widgetslib/util/Utils;->isRtl()Z

    move-result v3

    if-eqz v3, :cond_6

    const/16 v0, 0x1c

    .line 635
    invoke-direct {p0, v0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->dp2px(I)I

    move-result v0

    .line 636
    invoke-direct {p0, v4}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->dp2px(I)I

    move-result v1

    const/16 v3, 0x1e

    .line 637
    invoke-direct {p0, v3}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->dp2px(I)I

    move-result v3

    move v4, v2

    move v5, v4

    move v6, v5

    move v7, v6

    move v2, v1

    move v1, v0

    goto/16 :goto_5

    .line 639
    :cond_6
    invoke-direct {p0, v1}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->dp2px(I)I

    move-result v1

    .line 640
    invoke-direct {p0, v0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->dp2px(I)I

    move-result v0

    const/16 v3, 0xa

    .line 641
    invoke-direct {p0, v3}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->dp2px(I)I

    move-result v3

    move v4, v2

    move v5, v4

    move v6, v5

    move v7, v6

    move v2, v0

    goto/16 :goto_5

    .line 645
    :pswitch_2
    invoke-static {}, Lcom/transsion/widgetslib/util/Utils;->isRtl()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 646
    iget-boolean v3, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mIs24Format:Z

    if-eqz v3, :cond_7

    .line 647
    invoke-direct {p0, v0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->dp2px(I)I

    move-result v0

    .line 648
    invoke-direct {p0, v1}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->dp2px(I)I

    move-result v1

    const/16 v3, 0x2e

    .line 649
    invoke-direct {p0, v3}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->dp2px(I)I

    move-result v3

    .line 650
    iget-object v5, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mFormatWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {v5, v4}, Landroid/view/View;->setVisibility(I)V

    move v4, v0

    move v5, v1

    move v1, v2

    move v7, v1

    move v6, v3

    goto :goto_3

    .line 652
    :cond_7
    invoke-direct {p0, v2}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->dp2px(I)I

    move-result v0

    const/16 v1, 0xc

    .line 653
    invoke-direct {p0, v1}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->dp2px(I)I

    move-result v3

    .line 654
    invoke-direct {p0, v1}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->dp2px(I)I

    move-result v1

    .line 655
    invoke-direct {p0, v2}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->dp2px(I)I

    move-result v4

    .line 656
    iget-object v5, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mFormatWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {v5, v2}, Landroid/view/View;->setVisibility(I)V

    move v6, v1

    move v1, v2

    move v5, v3

    goto :goto_4

    .line 659
    :cond_8
    iget-boolean v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mIs24Format:Z

    if-eqz v0, :cond_9

    const/16 v0, 0x14

    .line 660
    invoke-direct {p0, v0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->dp2px(I)I

    move-result v0

    const/16 v3, 0x1a

    .line 661
    invoke-direct {p0, v3}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->dp2px(I)I

    move-result v3

    .line 662
    invoke-direct {p0, v1}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->dp2px(I)I

    move-result v1

    .line 663
    iget-object v5, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mFormatWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {v5, v4}, Landroid/view/View;->setVisibility(I)V

    move v4, v0

    move v6, v1

    move v1, v2

    move v7, v1

    move v5, v3

    :goto_3
    move v3, v7

    goto :goto_5

    :cond_9
    const/4 v0, 0x6

    .line 665
    invoke-direct {p0, v0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->dp2px(I)I

    move-result v0

    .line 666
    invoke-direct {p0, v4}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->dp2px(I)I

    move-result v1

    const/16 v3, 0x11

    .line 667
    invoke-direct {p0, v3}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->dp2px(I)I

    move-result v3

    .line 668
    invoke-direct {p0, v2}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->dp2px(I)I

    move-result v4

    .line 669
    iget-object v5, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mFormatWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {v5, v2}, Landroid/view/View;->setVisibility(I)V

    move v5, v1

    move v1, v2

    move v6, v3

    :goto_4
    move v7, v4

    move v4, v0

    move v3, v1

    .line 704
    :goto_5
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->isRequireRelayout()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 705
    invoke-direct {p0, v1}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->getRatioValue(I)I

    move-result v1

    invoke-direct {p0, v2}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->getRatioValue(I)I

    move-result v2

    invoke-direct {p0, v3}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->getRatioValue(I)I

    move-result v3

    invoke-direct {p0, v4}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->getRatioValue(I)I

    move-result v4

    invoke-direct {p0, v5}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->getRatioValue(I)I

    move-result v5

    invoke-direct {p0, v6}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->getRatioValue(I)I

    move-result v6

    invoke-direct {p0, v7}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->getRatioValue(I)I

    move-result v7

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->setMarginStart(IIIIIII)V

    .line 706
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->setWheelWidth()V

    goto :goto_6

    :cond_a
    move-object v0, p0

    .line 708
    invoke-virtual/range {v0 .. v7}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->setMarginStart(IIIIIII)V

    :goto_6
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x347fb3b9 -> :sswitch_2
        -0x985fe00 -> :sswitch_1
        0x4183e5a -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public updateTime(II)V
    .locals 2

    .line 839
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mCalendar:Ljava/util/Calendar;

    if-eqz v0, :cond_0

    const/16 v1, 0xb

    .line 840
    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    .line 841
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mCalendar:Ljava/util/Calendar;

    const/16 v0, 0xc

    invoke-virtual {p1, v0, p2}, Ljava/util/Calendar;->set(II)V

    .line 843
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->release()V

    .line 844
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->refreshUI()V

    :cond_0
    return-void
.end method
