.class public Lcom/transsion/ardrawlines/viewholder/BrushViewHolder;
.super Lcom/transsion/ardrawlines/base/BaseViewHolder;
.source "BrushViewHolder.java"

# interfaces
.implements Lcom/transsion/ardrawlines/view/FlowRadioGroup$OnChildSelectListener;
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/transsion/ardrawlines/service/VolumeChangeObserver$VolumeChangeListener;


# static fields
.field public static SET_AUDIO_SOURCE_MUTE:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private isPaintingExist:Z

.field private mBackSelectedDefaultColor:Z

.field private mBinding:Lcom/transsion/ardrawlines/databinding/ActivityArdrawlinesBinding;

.field private mBrushColorArea:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private mBrushColorSelector:Lcom/transsion/ardrawlines/view/FlowRadioGroup;

.field private mBrushHintView:Lcom/transsion/ardrawlines/view/CircleView;

.field private mBrushSizeSelector:Landroid/widget/SeekBar;

.field private mBrushTypeSelector:Lcom/transsion/ardrawlines/view/FlowRadioGroup;

.field private mClearButton:Landroid/widget/Button;

.field private mClearDialog:Lcom/transsion/widgetslib/dialog/PromptDialog;

.field private mColorSparseArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/transsion/ardrawlines/ARDrawLinesActivity;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentBrush:Lcom/transsion/ardrawlines/brush/Brush;

.field private mCurrentUnityPlayer:Lcom/unity3d/player/UnityPlayer;

.field private mDefaultFireworkBrush:Lcom/transsion/ardrawlines/brush/Brush;

.field private mDefaultFlowingBrush:Lcom/transsion/ardrawlines/brush/Brush;

.field private mDefaultGradientBrush:Lcom/transsion/ardrawlines/brush/Brush;

.field private mDefaultNeonBrush:Lcom/transsion/ardrawlines/brush/Brush;

.field private mDefaultSolidBrush:Lcom/transsion/ardrawlines/brush/Brush;

.field private mPaintingOperationArea:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private mRedoButton:Landroid/widget/Button;

.field private mRevokeArea:Landroid/widget/LinearLayout;

.field private mSelectedUniqueColor:I

.field private mSoundButton:Landroid/widget/ImageView;

.field private mUndoButton:Landroid/widget/Button;

.field private mVolumeChangeObserver:Lcom/transsion/ardrawlines/service/VolumeChangeObserver;


# direct methods
.method public static synthetic $r8$lambda$DuZKVJ9h5wro5kRod-K9smcRFNc(Lcom/transsion/ardrawlines/viewholder/BrushViewHolder;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/ardrawlines/viewholder/BrushViewHolder;->lambda$onChildSelected$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$XyWJHAcnc9KHwmyUcL0wnZsisWo(Lcom/transsion/ardrawlines/viewholder/BrushViewHolder;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/ardrawlines/viewholder/BrushViewHolder;->lambda$onChildSelected$0()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 45
    const-class v0, Lcom/transsion/ardrawlines/viewholder/BrushViewHolder;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/ardrawlines/viewholder/BrushViewHolder;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 46
    sput-boolean v0, Lcom/transsion/ardrawlines/viewholder/BrushViewHolder;->SET_AUDIO_SOURCE_MUTE:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/ref/WeakReference;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/transsion/ardrawlines/ARDrawLinesActivity;",
            ">;)V"
        }
    .end annotation

    .line 75
    invoke-direct {p0}, Lcom/transsion/ardrawlines/base/BaseViewHolder;-><init>()V

    .line 61
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/transsion/ardrawlines/viewholder/BrushViewHolder;->mColorSparseArray:Landroid/util/SparseArray;

    const/4 v0, 0x1

    .line 71
    iput-boolean v0, p0, Lcom/transsion/ardrawlines/viewholder/BrushViewHolder;->mBackSelectedDefaultColor:Z

    const/4 v0, 0x0

    .line 73
    iput-boolean v0, p0, Lcom/transsion/ardrawlines/viewholder/BrushViewHolder;->isPaintingExist:Z

    .line 76
    iput-object p1, p0, Lcom/transsion/ardrawlines/viewholder/BrushViewHolder;->mContext:Ljava/lang/ref/WeakReference;

    .line 77
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/ardrawlines/ARDrawLinesActivity;

    invoke-virtual {p1}, Lcom/transsion/ardrawlines/base/BaseAppCompatActivity;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/transsion/ardrawlines/databinding/ActivityArdrawlinesBinding;

    iput-object p1, p0, Lcom/transsion/ardrawlines/viewholder/BrushViewHolder;->mBinding:Lcom/transsion/ardrawlines/databinding/ActivityArdrawlinesBinding;

    .line 78
    iget-object p1, p0, Lcom/transsion/ardrawlines/viewholder/BrushViewHolder;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/ardrawlines/ARDrawLinesActivity;

    invoke-virtual {p1}, Landroidx/activity/ComponentActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 79
    invoke-direct {p0}, Lcom/transsion/ardrawlines/viewholder/BrushViewHolder;->initViews()V

    .line 80
    invoke-direct {p0}, Lcom/transsion/ardrawlines/viewholder/BrushViewHolder;->initData()V

    return-void
.end method

.method private initData()V
    .locals 7

    .line 117
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 119
    new-instance v0, Lcom/transsion/ardrawlines/service/VolumeChangeObserver;

    iget-object v1, p0, Lcom/transsion/ardrawlines/viewholder/BrushViewHolder;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/transsion/ardrawlines/service/VolumeChangeObserver;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/transsion/ardrawlines/viewholder/BrushViewHolder;->mVolumeChangeObserver:Lcom/transsion/ardrawlines/service/VolumeChangeObserver;

    .line 120
    sget v0, Lcom/transsion/ardrawlines/R$array;->brush_color:I

    invoke-virtual {p0, v0}, Lcom/transsion/ardrawlines/viewholder/BrushViewHolder;->getTextureIds(I)[I

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    .line 121
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 122
    iget-object v3, p0, Lcom/transsion/ardrawlines/viewholder/BrushViewHolder;->mColorSparseArray:Landroid/util/SparseArray;

    iget-object v4, p0, Lcom/transsion/ardrawlines/viewholder/BrushViewHolder;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transsion/ardrawlines/ARDrawLinesActivity;

    invoke-virtual {v4}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    aget v5, v0, v2

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 126
    :cond_0
    invoke-static {}, Lcom/transsion/ardrawlines/utils/RTLUtil;->isRTL()Z

    move-result v0

    const/4 v2, 0x4

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    .line 127
    new-instance v0, Lcom/transsion/ardrawlines/brush/Brush;

    sget-object v4, Lcom/transsion/ardrawlines/brush/BrushType;->SOLID:Lcom/transsion/ardrawlines/brush/BrushType;

    invoke-direct {v0, v4, v3, v3}, Lcom/transsion/ardrawlines/brush/Brush;-><init>(Lcom/transsion/ardrawlines/brush/BrushType;II)V

    iput-object v0, p0, Lcom/transsion/ardrawlines/viewholder/BrushViewHolder;->mDefaultSolidBrush:Lcom/transsion/ardrawlines/brush/Brush;

    .line 128
    new-instance v0, Lcom/transsion/ardrawlines/brush/Brush;

    const/4 v5, 0x3

    invoke-direct {v0, v4, v3, v5}, Lcom/transsion/ardrawlines/brush/Brush;-><init>(Lcom/transsion/ardrawlines/brush/BrushType;II)V

    iput-object v0, p0, Lcom/transsion/ardrawlines/viewholder/BrushViewHolder;->mDefaultNeonBrush:Lcom/transsion/ardrawlines/brush/Brush;

    .line 129
    new-instance v0, Lcom/transsion/ardrawlines/brush/Brush;

    const/4 v6, 0x7

    invoke-direct {v0, v4, v3, v6}, Lcom/transsion/ardrawlines/brush/Brush;-><init>(Lcom/transsion/ardrawlines/brush/BrushType;II)V

    iput-object v0, p0, Lcom/transsion/ardrawlines/viewholder/BrushViewHolder;->mDefaultGradientBrush:Lcom/transsion/ardrawlines/brush/Brush;

    .line 130
    new-instance v0, Lcom/transsion/ardrawlines/brush/Brush;

    const/4 v6, 0x5

    invoke-direct {v0, v4, v3, v6}, Lcom/transsion/ardrawlines/brush/Brush;-><init>(Lcom/transsion/ardrawlines/brush/BrushType;II)V

    iput-object v0, p0, Lcom/transsion/ardrawlines/viewholder/BrushViewHolder;->mDefaultFireworkBrush:Lcom/transsion/ardrawlines/brush/Brush;

    .line 131
    new-instance v0, Lcom/transsion/ardrawlines/brush/Brush;

    invoke-direct {v0, v4, v3, v5}, Lcom/transsion/ardrawlines/brush/Brush;-><init>(Lcom/transsion/ardrawlines/brush/BrushType;II)V

    iput-object v0, p0, Lcom/transsion/ardrawlines/viewholder/BrushViewHolder;->mDefaultFlowingBrush:Lcom/transsion/ardrawlines/brush/Brush;

    goto :goto_1

    .line 133
    :cond_1
    new-instance v0, Lcom/transsion/ardrawlines/brush/Brush;

    sget-object v4, Lcom/transsion/ardrawlines/brush/BrushType;->SOLID:Lcom/transsion/ardrawlines/brush/BrushType;

    const/4 v5, 0x6

    invoke-direct {v0, v4, v3, v5}, Lcom/transsion/ardrawlines/brush/Brush;-><init>(Lcom/transsion/ardrawlines/brush/BrushType;II)V

    iput-object v0, p0, Lcom/transsion/ardrawlines/viewholder/BrushViewHolder;->mDefaultSolidBrush:Lcom/transsion/ardrawlines/brush/Brush;

    .line 134
    new-instance v0, Lcom/transsion/ardrawlines/brush/Brush;

    invoke-direct {v0, v4, v3, v2}, Lcom/transsion/ardrawlines/brush/Brush;-><init>(Lcom/transsion/ardrawlines/brush/BrushType;II)V

    iput-object v0, p0, Lcom/transsion/ardrawlines/viewholder/BrushViewHolder;->mDefaultNeonBrush:Lcom/transsion/ardrawlines/brush/Brush;

    .line 135
    new-instance v0, Lcom/transsion/ardrawlines/brush/Brush;

    invoke-direct {v0, v4, v3, v1}, Lcom/transsion/ardrawlines/brush/Brush;-><init>(Lcom/transsion/ardrawlines/brush/BrushType;II)V

    iput-object v0, p0, Lcom/transsion/ardrawlines/viewholder/BrushViewHolder;->mDefaultGradientBrush:Lcom/transsion/ardrawlines/brush/Brush;

    .line 136
    new-instance v0, Lcom/transsion/ardrawlines/brush/Brush;

    const/4 v5, 0x2

    invoke-direct {v0, v4, v3, v5}, Lcom/transsion/ardrawlines/brush/Brush;-><init>(Lcom/transsion/ardrawlines/brush/BrushType;II)V

    iput-object v0, p0, Lcom/transsion/ardrawlines/viewholder/BrushViewHolder;->mDefaultFireworkBrush:Lcom/transsion/ardrawlines/brush/Brush;

    .line 137
    new-instance v0, Lcom/transsion/ardrawlines/brush/Brush;

    invoke-direct {v0, v4, v3, v2}, Lcom/transsion/ardrawlines/brush/Brush;-><init>(Lcom/transsion/ardrawlines/brush/BrushType;II)V

    iput-object v0, p0, Lcom/transsion/ardrawlines/viewholder/BrushViewHolder;->mDefaultFlowingBrush:Lcom/transsion/ardrawlines/brush/Brush;

    .line 140
    :goto_1
    iget-object v0, p0, Lcom/transsion/ardrawlines/viewholder/BrushViewHolder;->mDefaultSolidBrush:Lcom/transsion/ardrawlines/brush/Brush;

    invoke-virtual {v0}, Lcom/transsion/ardrawlines/brush/Brush;->getBrushColor()I

    move-result v0

    iput v0, p0, Lcom/transsion/ardrawlines/viewholder/BrushViewHolder;->mSelectedUniqueColor:I

    .line 141
    iget-object v0, p0, Lcom/transsion/ardrawlines/viewholder/BrushViewHolder;->mDefaultSolidBrush:Lcom/transsion/ardrawlines/brush/Brush;

    iput-object v0, p0, Lcom/transsion/ardrawlines/viewholder/BrushViewHolder;->mCurrentBrush:Lcom/transsion/ardrawlines/brush/Brush;

    .line 143
    invoke-static {}, Lcom/transsion/ardrawlines/utils/RTLUtil;->isRTL()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 144
    iget-object v0, p0, Lcom/transsion/ardrawlines/viewholder/BrushViewHolder;->mBrushTypeSelector:Lcom/transsion/ardrawlines/view/FlowRadioGroup;

    invoke-virtual {v0, v2}, Lcom/transsion/ardrawlines/view/FlowRadioGroup;->setSelect(I)V

    goto :goto_2

    .line 146
    :cond_2
    iget-object v0, p0, Lcom/transsion/ardrawlines/viewholder/BrushViewHolder;->mBrushTypeSelector:Lcom/transsion/ardrawlines/view/FlowRadioGroup;

    invoke-virtual {v0, v1}, Lcom/transsion/ardrawlines/view/FlowRadioGroup;->setSelect(I)V

    .line 148
    :goto_2
    iget-object v0, p0, Lcom/transsion/ardrawlines/viewholder/BrushViewHolder;->mBrushSizeSelector:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/transsion/ardrawlines/viewholder/BrushViewHolder;->mCurrentBrush:Lcom/transsion/ardrawlines/brush/Brush;

    invoke-virtual {v1}, Lcom/transsion/ardrawlines/brush/Brush;->getBrushSize()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 149
    iget-object v0, p0, Lcom/transsion/ardrawlines/viewholder/BrushViewHolder;->mBrushColorSelector:Lcom/transsion/ardrawlines/view/FlowRadioGroup;

    iget-object v1, p0, Lcom/transsion/ardrawlines/viewholder/BrushViewHolder;->mCurrentBrush:Lcom/transsion/ardrawlines/brush/Brush;

    invoke-virtual {v1}, Lcom/transsion/ardrawlines/brush/Brush;->getBrushColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/transsion/ardrawlines/view/FlowRadioGroup;->setSelect(I)V

    .line 152
    invoke-virtual {p0}, Lcom/transsion/ardrawlines/viewholder/BrushViewHolder;->setCurrentMusicVolume()V

    return-void
.end method

.method private initViews()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 86
    iget-object v0, p0, Lcom/transsion/ardrawlines/viewholder/BrushViewHolder;->mBinding:Lcom/transsion/ardrawlines/databinding/ActivityArdrawlinesBinding;

    iget-object v0, v0, Lcom/transsion/ardrawlines/databinding/ActivityArdrawlinesBinding;->viewBrushArea:Lcom/transsion/ardrawlines/databinding/ViewBrushAreaBinding;

    iget-object v1, v0, Lcom/transsion/ardrawlines/databinding/ViewBrushAreaBinding;->brushHintView:Lcom/transsion/ardrawlines/view/CircleView;

    iput-object v1, p0, Lcom/transsion/ardrawlines/viewholder/BrushViewHolder;->mBrushHintView:Lcom/transsion/ardrawlines/view/CircleView;

    .line 88
    iget-object v0, v0, Lcom/transsion/ardrawlines/databinding/ViewBrushAreaBinding;->brushTypeSelectors:Lcom/transsion/ardrawlines/databinding/ViewBrushTypeSelectorsBinding;

    iget-object v0, v0, Lcom/transsion/ardrawlines/databinding/ViewBrushTypeSelectorsBinding;->brushTypeGroup:Lcom/transsion/ardrawlines/view/FlowRadioGroup;

    iput-object v0, p0, Lcom/transsion/ardrawlines/viewholder/BrushViewHolder;->mBrushTypeSelector:Lcom/transsion/ardrawlines/view/FlowRadioGroup;

    .line 89
    invoke-virtual {v0, p0}, Lcom/transsion/ardrawlines/view/FlowRadioGroup;->setOnChildSelectListener(Lcom/transsion/ardrawlines/view/FlowRadioGroup$OnChildSelectListener;)V

    .line 91
    iget-object v0, p0, Lcom/transsion/ardrawlines/viewholder/BrushViewHolder;->mBinding:Lcom/transsion/ardrawlines/databinding/ActivityArdrawlinesBinding;

    iget-object v0, v0, Lcom/transsion/ardrawlines/databinding/ActivityArdrawlinesBinding;->viewBrushArea:Lcom/transsion/ardrawlines/databinding/ViewBrushAreaBinding;

    iget-object v0, v0, Lcom/transsion/ardrawlines/databinding/ViewBrushAreaBinding;->brushSeekBar:Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/transsion/ardrawlines/viewholder/BrushViewHolder;->mBrushSizeSelector:Landroid/widget/SeekBar;

    .line 92
    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 94
    iget-object v0, p0, Lcom/transsion/ardrawlines/viewholder/BrushViewHolder;->mBinding:Lcom/transsion/ardrawlines/databinding/ActivityArdrawlinesBinding;

    iget-object v0, v0, Lcom/transsion/ardrawlines/databinding/ActivityArdrawlinesBinding;->viewBrushArea:Lcom/transsion/ardrawlines/databinding/ViewBrushAreaBinding;

    iget-object v0, v0, Lcom/transsion/ardrawlines/databinding/ViewBrushAreaBinding;->brushColorSelectors:Lcom/transsion/ardrawlines/databinding/ViewBrushColorSelectorsBinding;

    iget-object v0, v0, Lcom/transsion/ardrawlines/databinding/ViewBrushColorSelectorsBinding;->brushColorGroup:Lcom/transsion/ardrawlines/view/FlowRadioGroup;

    iput-object v0, p0, Lcom/transsion/ardrawlines/viewholder/BrushViewHolder;->mBrushColorSelector:Lcom/transsion/ardrawlines/view/FlowRadioGroup;

    .line 95
    invoke-virtual {v0, p0}, Lcom/transsion/ardrawlines/view/FlowRadioGroup;->setOnChildSelectListener(Lcom/transsion/ardrawlines/view/FlowRadioGroup$OnChildSelectListener;)V

    .line 97
    iget-object v0, p0, Lcom/transsion/ardrawlines/viewholder/BrushViewHolder;->mBinding:Lcom/transsion/ardrawlines/databinding/ActivityArdrawlinesBinding;

    iget-object v0, v0, Lcom/transsion/ardrawlines/databinding/ActivityArdrawlinesBinding;->viewBrushArea:Lcom/transsion/ardrawlines/databinding/ViewBrushAreaBinding;

    iget-object v1, v0, Lcom/transsion/ardrawlines/databinding/ViewBrushAreaBinding;->brushLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v1, p0, Lcom/transsion/ardrawlines/viewholder/BrushViewHolder;->mBrushColorArea:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 99
    iget-object v0, v0, Lcom/transsion/ardrawlines/databinding/ViewBrushAreaBinding;->paintingOperationArea:Lcom/transsion/ardrawlines/databinding/ViewActionButtonsBinding;

    invoke-virtual {v0}, Lcom/transsion/ardrawlines/databinding/ViewActionButtonsBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/ardrawlines/viewholder/BrushViewHolder;->mPaintingOperationArea:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 100
    iget-object v0, p0, Lcom/transsion/ardrawlines/viewholder/BrushViewHolder;->mBinding:Lcom/transsion/ardrawlines/databinding/ActivityArdrawlinesBinding;

    iget-object v1, v0, Lcom/transsion/ardrawlines/databinding/ActivityArdrawlinesBinding;->viewBrushArea:Lcom/transsion/ardrawlines/databinding/ViewBrushAreaBinding;

    iget-object v1, v1, Lcom/transsion/ardrawlines/databinding/ViewBrushAreaBinding;->paintingOperationArea:Lcom/transsion/ardrawlines/databinding/ViewActionButtonsBinding;

    iget-object v2, v1, Lcom/transsion/ardrawlines/databinding/ViewActionButtonsBinding;->revokeArea:Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/transsion/ardrawlines/viewholder/BrushViewHolder;->mRevokeArea:Landroid/widget/LinearLayout;

    .line 101
    iget-object v2, v1, Lcom/transsion/ardrawlines/databinding/ViewActionButtonsBinding;->buttonSound:Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/transsion/ardrawlines/viewholder/BrushViewHolder;->mSoundButton:Landroid/widget/ImageView;

    .line 102
    iget-object v2, v1, Lcom/transsion/ardrawlines/databinding/ViewActionButtonsBinding;->buttonClean:Landroid/widget/Button;

    iput-object v2, p0, Lcom/transsion/ardrawlines/viewholder/BrushViewHolder;->mClearButton:Landroid/widget/Button;

    .line 103
    iget-object v2, v1, Lcom/transsion/ardrawlines/databinding/ViewActionButtonsBinding;->undo:Landroid/widget/Button;

    iput-object v2, p0, Lcom/transsion/ardrawlines/viewholder/BrushViewHolder;->mUndoButton:Landroid/widget/Button;

    .line 104
    iget-object v1, v1, Lcom/transsion/ardrawlines/databinding/ViewActionButtonsBinding;->redo:Landroid/widget/Button;

    iput-object v1, p0, Lcom/transsion/ardrawlines/viewholder/BrushViewHolder;->mRedoButton:Landroid/widget/Button;

    .line 106
    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/transsion/ardrawlines/viewholder/BrushViewHolder$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/transsion/ardrawlines/viewholder/BrushViewHolder$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/ardrawlines/viewholder/BrushViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 107
    iget-object v0, p0, Lcom/transsion/ardrawlines/viewholder/BrushViewHolder;->mBrushColorArea:Landroidx/constraintlayout/widget/ConstraintLayout;

    new-instance v1, Lcom/transsion/ardrawlines/viewholder/BrushViewHolder$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/transsion/ardrawlines/viewholder/BrushViewHolder$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/ardrawlines/viewholder/BrushViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 108
    iget-object v0, p0, Lcom/transsion/ardrawlines/viewholder/BrushViewHolder;->mPaintingOperationArea:Landroidx/constraintlayout/widget/ConstraintLayout;

    new-instance v1, Lcom/transsion/ardrawlines/viewholder/BrushViewHolder$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/transsion/ardrawlines/viewholder/BrushViewHolder$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/ardrawlines/viewholder/BrushViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 109
    iget-object v0, p0, Lcom/transsion/ardrawlines/viewholder/BrushViewHolder;->mRevokeArea:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/transsion/ardrawlines/viewholder/BrushViewHolder$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/transsion/ardrawlines/viewholder/BrushViewHolder$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/ardrawlines/viewholder/BrushViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 110
    iget-object v0, p0, Lcom/transsion/ardrawlines/viewholder/BrushViewHolder;->mSoundButton:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/transsion/ardrawlines/base/BaseViewHolder;->addShakeClick(Landroid/view/View;)V

    .line 111
    iget-object v0, p0, Lcom/transsion/ardrawlines/viewholder/BrushViewHolder;->mClearButton:Landroid/widget/Button;

    invoke-virtual {p0, v0}, Lcom/transsion/ardrawlines/base/BaseViewHolder;->addShakeClick(Landroid/view/View;)V

    .line 112
    iget-object v0, p0, Lcom/transsion/ardrawlines/viewholder/BrushViewHolder;->mUndoButton:Landroid/widget/Button;

    invoke-virtual {p0, v0}, Lcom/transsion/ardrawlines/base/BaseViewHolder;->addShakeClick(Landroid/view/View;)V

    .line 113
    iget-object v0, p0, Lcom/transsion/ardrawlines/viewholder/BrushViewHolder;->mRedoButton:Landroid/widget/Button;

    invoke-virtual {p0, v0}, Lcom/transsion/ardrawlines/base/BaseViewHolder;->addShakeClick(Landroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$onChildSelected$0()V
    .locals 1

    .line 383
    invoke-static {}, Lcom/transsion/ardrawlines/utils/RTLUtil;->isRTL()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 384
    iget-object p0, p0, Lcom/transsion/ardrawlines/viewholder/BrushViewHolder;->mBinding:Lcom/transsion/ardrawlines/databinding/ActivityArdrawlinesBinding;

    iget-object p0, p0, Lcom/transsion/ardrawlines/databinding/ActivityArdrawlinesBinding;->viewBrushArea:Lcom/transsion/ardrawlines/databinding/ViewBrushAreaBinding;

    iget-object p0, p0, Lcom/transsion/ardrawlines/databinding/ViewBrushAreaBinding;->brushColorView:Landroid/widget/HorizontalScrollView;

    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Landroid/widget/HorizontalScrollView;->fullScroll(I)Z

    .line 385
    sget-object p0, Lcom/transsion/ardrawlines/viewholder/BrushViewHolder;->TAG:Ljava/lang/String;

    const-string v0, "HorizontalScrollView.FOCUS_LEFT"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 387
    :cond_0
    iget-object p0, p0, Lcom/transsion/ardrawlines/viewholder/BrushViewHolder;->mBinding:Lcom/transsion/ardrawlines/databinding/ActivityArdrawlinesBinding;

    iget-object p0, p0, Lcom/transsion/ardrawlines/databinding/ActivityArdrawlinesBinding;->viewBrushArea:Lcom/transsion/ardrawlines/databinding/ViewBrushAreaBinding;

    iget-object p0, p0, Lcom/transsion/ardrawlines/databinding/ViewBrushAreaBinding;->brushColorView:Landroid/widget/HorizontalScrollView;

    const/16 v0, 0x42

    invoke-virtual {p0, v0}, Landroid/widget/HorizontalScrollView;->fullScroll(I)Z

    .line 388
    sget-object p0, Lcom/transsion/ardrawlines/viewholder/BrushViewHolder;->TAG:Ljava/lang/String;

    const-string v0, "HorizontalScrollView.FOCUS_RIGHT"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private synthetic lambda$onChildSelected$1()V
    .locals 1

    .line 393
    invoke-static {}, Lcom/transsion/ardrawlines/utils/RTLUtil;->isRTL()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 394
    iget-object p0, p0, Lcom/transsion/ardrawlines/viewholder/BrushViewHolder;->mBinding:Lcom/transsion/ardrawlines/databinding/ActivityArdrawlinesBinding;

    iget-object p0, p0, Lcom/transsion/ardrawlines/databinding/ActivityArdrawlinesBinding;->viewBrushArea:Lcom/transsion/ardrawlines/databinding/ViewBrushAreaBinding;

    iget-object p0, p0, Lcom/transsion/ardrawlines/databinding/ViewBrushAreaBinding;->brushColorView:Landroid/widget/HorizontalScrollView;

    const/16 v0, 0x42

    invoke-virtual {p0, v0}, Landroid/widget/HorizontalScrollView;->fullScroll(I)Z

    .line 395
    sget-object p0, Lcom/transsion/ardrawlines/viewholder/BrushViewHolder;->TAG:Ljava/lang/String;

    const-string v0, "HorizontalScrollView.FOCUS_RIGHT"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 397
    :cond_0
    iget-object p0, p0, Lcom/transsion/ardrawlines/viewholder/BrushViewHolder;->mBinding:Lcom/transsion/ardrawlines/databinding/ActivityArdrawlinesBinding;

    iget-object p0, p0, Lcom/transsion/ardrawlines/databinding/ActivityArdrawlinesBinding;->viewBrushArea:Lcom/transsion/ardrawlines/databinding/ViewBrushAreaBinding;

    iget-object p0, p0, Lcom/transsion/ardrawlines/databinding/ViewBrushAreaBinding;->brushColorView:Landroid/widget/HorizontalScrollView;

    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Landroid/widget/HorizontalScrollView;->fullScroll(I)Z

    .line 398
    sget-object p0, Lcom/transsion/ardrawlines/viewholder/BrushViewHolder;->TAG:Ljava/lang/String;

    const-string v0, "HorizontalScrollView.FOCUS_LEFT"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public clearLines()V
    .locals 3

    .line 289
    iget-object v0, p0, Lcom/transsion/ardrawlines/viewholder/BrushViewHolder;->mClearDialog:Lcom/transsion/widgetslib/dialog/PromptDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 290
    :cond_0
    new-instance v0, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    iget-object v1, p0, Lcom/transsion/ardrawlines/viewholder/BrushViewHolder;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/transsion/ardrawlines/viewholder/BrushViewHolder;->mContext:Ljava/lang/ref/WeakReference;

    .line 291
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/ardrawlines/ARDrawLinesActivity;

    sget v2, Lcom/transsion/ardrawlines/R$string;->clear_prompt:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/ardrawlines/viewholder/BrushViewHolder;->mContext:Ljava/lang/ref/WeakReference;

    .line 292
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/ardrawlines/ARDrawLinesActivity;

    sget v2, Lcom/transsion/ardrawlines/R$string;->cancel:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/transsion/ardrawlines/viewholder/BrushViewHolder$2;

    invoke-direct {v2, p0}, Lcom/transsion/ardrawlines/viewholder/BrushViewHolder$2;-><init>(Lcom/transsion/ardrawlines/viewholder/BrushViewHolder;)V

    invoke-virtual {v0, v1, v2}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/ardrawlines/viewholder/BrushViewHolder;->mContext:Ljava/lang/ref/WeakReference;

    .line 298
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/ardrawlines/ARDrawLinesActivity;

    sget v2, Lcom/transsion/ardrawlines/R$string;->clear:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/transsion/ardrawlines/viewholder/BrushViewHolder$1;

    invoke-direct {v2, p0}, Lcom/transsion/ardrawlines/viewholder/BrushViewHolder$1;-><init>(Lcom/transsion/ardrawlines/viewholder/BrushViewHolder;)V

    invoke-virtual {v0, v1, v2}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 305
    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setCancelable(Z)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    move-result-object v0

    .line 306
    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setCanceledOnTouchOutside(Z)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    move-result-object v0

    .line 307
    invoke-virtual {v0}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->show()Lcom/transsion/widgetslib/dialog/PromptDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/ardrawlines/viewholder/BrushViewHolder;->mClearDialog:Lcom/transsion/widgetslib/dialog/PromptDialog;

    :cond_1
    return-void
.end method

.method public getPaintingExistState()Z
    .locals 0

    .line 553
    iget-boolean p0, p0, Lcom/transsion/ardrawlines/viewholder/BrushViewHolder;->isPaintingExist:Z

    return p0
.end method

.method public getTextureIds(I)[I
    .locals 4

    .line 537
    iget-object p0, p0, Lcom/transsion/ardrawlines/viewholder/BrushViewHolder;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/ardrawlines/ARDrawLinesActivity;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object p0

    .line 538
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->length()I

    move-result p1

    .line 539
    new-array v0, p1, [I

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, p1, :cond_0

    .line 541
    invoke-virtual {p0, v2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    aput v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 543
    :cond_0
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return-object v0
.end method

.method public onChildSelected(Landroid/view/View;Landroid/view/View;Landroid/view/View;I)V
    .locals 4

    .line 358
    iget-object p2, p0, Lcom/transsion/ardrawlines/viewholder/BrushViewHolder;->mBrushTypeSelector:Lcom/transsion/ardrawlines/view/FlowRadioGroup;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 p3, 0x1

    if-eqz p2, :cond_10

    .line 361
    invoke-static {}, Lcom/transsion/ardrawlines/utils/RTLUtil;->isRTL()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 362
    iget-object p1, p0, Lcom/transsion/ardrawlines/viewholder/BrushViewHolder;->mBrushTypeSelector:Lcom/transsion/ardrawlines/view/FlowRadioGroup;

    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getChildCount()I

    move-result p1

    sub-int/2addr p1, p3

    sub-int p4, p1, p4

    .line 364
    :cond_0
    sget-object p1, Lcom/transsion/ardrawlines/viewholder/BrushViewHolder;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "BrushType Selected = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "ml_type_cl"

    const/4 p2, 0x7

    const/4 v0, 0x6

    const/4 v1, 0x0

    if-eqz p4, :cond_d

    const/16 v2, 0x8

    if-eq p4, p3, :cond_a

    const/4 v3, 0x2

    if-eq p4, v3, :cond_7

    const/4 v3, 0x3

    if-eq p4, v3, :cond_4

    const/4 v3, 0x4

    if-eq p4, v3, :cond_1

    goto/16 :goto_6

    .line 462
    :cond_1
    invoke-static {}, Lcom/transsion/ardrawlines/utils/RTLUtil;->isRTL()Z

    move-result p4

    if-eqz p4, :cond_2

    .line 463
    iget-object p2, p0, Lcom/transsion/ardrawlines/viewholder/BrushViewHolder;->mBrushColorSelector:Lcom/transsion/ardrawlines/view/FlowRadioGroup;

    invoke-virtual {p2, v1}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    .line 464
    iget-object p2, p0, Lcom/transsion/ardrawlines/viewholder/BrushViewHolder;->mBrushColorSelector:Lcom/transsion/ardrawlines/view/FlowRadioGroup;

    invoke-virtual {p2, p3}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 466
    :cond_2
    iget-object p3, p0, Lcom/transsion/ardrawlines/viewholder/BrushViewHolder;->mBrushColorSelector:Lcom/transsion/ardrawlines/view/FlowRadioGroup;

    invoke-virtual {p3, v0}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    invoke-virtual {p3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 467
    iget-object p3, p0, Lcom/transsion/ardrawlines/viewholder/BrushViewHolder;->mBrushColorSelector:Lcom/transsion/ardrawlines/view/FlowRadioGroup;

    invoke-virtual {p3, p2}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    .line 469
    :goto_0
    iget-object p2, p0, Lcom/transsion/ardrawlines/viewholder/BrushViewHolder;->mCurrentBrush:Lcom/transsion/ardrawlines/brush/Brush;

    sget-object p3, Lcom/transsion/ardrawlines/brush/BrushType;->FLOWING:Lcom/transsion/ardrawlines/brush/BrushType;

    invoke-virtual {p2, p3}, Lcom/transsion/ardrawlines/brush/Brush;->setBrushType(Lcom/transsion/ardrawlines/brush/BrushType;)V

    .line 470
    iget-boolean p2, p0, Lcom/transsion/ardrawlines/viewholder/BrushViewHolder;->mBackSelectedDefaultColor:Z

    if-eqz p2, :cond_3

    .line 471
    iget-object p2, p0, Lcom/transsion/ardrawlines/viewholder/BrushViewHolder;->mCurrentBrush:Lcom/transsion/ardrawlines/brush/Brush;

    iget-object p3, p0, Lcom/transsion/ardrawlines/viewholder/BrushViewHolder;->mDefaultFlowingBrush:Lcom/transsion/ardrawlines/brush/Brush;

    invoke-virtual {p3}, Lcom/transsion/ardrawlines/brush/Brush;->getBrushColor()I

    move-result p3

    invoke-virtual {p2, p3}, Lcom/transsion/ardrawlines/brush/Brush;->setBrushColor(I)V

    .line 472
    iget-object p2, p0, Lcom/transsion/ardrawlines/viewholder/BrushViewHolder;->mBrushColorSelector:Lcom/transsion/ardrawlines/view/FlowRadioGroup;

    iget-object p3, p0, Lcom/transsion/ardrawlines/viewholder/BrushViewHolder;->mCurrentBrush:Lcom/transsion/ardrawlines/brush/Brush;

    invoke-virtual {p3}, Lcom/transsion/ardrawlines/brush/Brush;->getBrushColor()I

    move-result p3

    invoke-virtual {p2, p3}, Lcom/transsion/ardrawlines/view/FlowRadioGroup;->setSelect(I)V

    .line 474
    :cond_3
    invoke-virtual {p0}, Lcom/transsion/ardrawlines/viewholder/BrushViewHolder;->sendSelectedBrush()V

    const-string p0, "flowing"

    .line 475
    invoke-static {p1, p0}, Lcom/transsion/analysislibrary/StatisticAnalysis;->sendMsg(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_6

    .line 444
    :cond_4
    invoke-static {}, Lcom/transsion/ardrawlines/utils/RTLUtil;->isRTL()Z

    move-result p4

    if-eqz p4, :cond_5

    .line 445
    iget-object p2, p0, Lcom/transsion/ardrawlines/viewholder/BrushViewHolder;->mBrushColorSelector:Lcom/transsion/ardrawlines/view/FlowRadioGroup;

    invoke-virtual {p2, v1}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    .line 446
    iget-object p2, p0, Lcom/transsion/ardrawlines/viewholder/BrushViewHolder;->mBrushColorSelector:Lcom/transsion/ardrawlines/view/FlowRadioGroup;

    invoke-virtual {p2, p3}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 448
    :cond_5
    iget-object p3, p0, Lcom/transsion/ardrawlines/viewholder/BrushViewHolder;->mBrushColorSelector:Lcom/transsion/ardrawlines/view/FlowRadioGroup;

    invoke-virtual {p3, v0}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    invoke-virtual {p3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 449
    iget-object p3, p0, Lcom/transsion/ardrawlines/viewholder/BrushViewHolder;->mBrushColorSelector:Lcom/transsion/ardrawlines/view/FlowRadioGroup;

    invoke-virtual {p3, p2}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    .line 451
    :goto_1
    iget-object p2, p0, Lcom/transsion/ardrawlines/viewholder/BrushViewHolder;->mCurrentBrush:Lcom/transsion/ardrawlines/brush/Brush;

    sget-object p3, Lcom/transsion/ardrawlines/brush/BrushType;->FIREWORK:Lcom/transsion/ardrawlines/brush/BrushType;

    invoke-virtual {p2, p3}, Lcom/transsion/ardrawlines/brush/Brush;->setBrushType(Lcom/transsion/ardrawlines/brush/BrushType;)V

    .line 452
    iget-boolean p2, p0, Lcom/transsion/ardrawlines/viewholder/BrushViewHolder;->mBackSelectedDefaultColor:Z

    if-eqz p2, :cond_6

    .line 453
    iget-object p2, p0, Lcom/transsion/ardrawlines/viewholder/BrushViewHolder;->mCurrentBrush:Lcom/transsion/ardrawlines/brush/Brush;

    iget-object p3, p0, Lcom/transsion/ardrawlines/viewholder/BrushViewHolder;->mDefaultFireworkBrush:Lcom/transsion/ardrawlines/brush/Brush;

    invoke-virtual {p3}, Lcom/transsion/ardrawlines/brush/Brush;->getBrushColor()I

    move-result p3

    invoke-virtual {p2, p3}, Lcom/transsion/ardrawlines/brush/Brush;->setBrushColor(I)V

    .line 454
    iget-object p2, p0, Lcom/transsion/ardrawlines/viewholder/BrushViewHolder;->mBrushColorSelector:Lcom/transsion/ardrawlines/view/FlowRadioGroup;

    iget-object p3, p0, Lcom/transsion/ardrawlines/viewholder/BrushViewHolder;->mCurrentBrush:Lcom/transsion/ardrawlines/brush/Brush;

    invoke-virtual {p3}, Lcom/transsion/ardrawlines/brush/Brush;->getBrushColor()I

    move-result p3

    invoke-virtual {p2, p3}, Lcom/transsion/ardrawlines/view/FlowRadioGroup;->setSelect(I)V

    .line 456
    :cond_6
    invoke-virtual {p0}, Lcom/transsion/ardrawlines/viewholder/BrushViewHolder;->sendSelectedBrush()V

    const-string p0, "firework"

    .line 457
    invoke-static {p1, p0}, Lcom/transsion/analysislibrary/StatisticAnalysis;->sendMsg(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_6

    .line 426
    :cond_7
    invoke-static {}, Lcom/transsion/ardrawlines/utils/RTLUtil;->isRTL()Z

    move-result p4

    if-eqz p4, :cond_8

    .line 427
    iget-object p2, p0, Lcom/transsion/ardrawlines/viewholder/BrushViewHolder;->mBrushColorSelector:Lcom/transsion/ardrawlines/view/FlowRadioGroup;

    invoke-virtual {p2, v1}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    .line 428
    iget-object p2, p0, Lcom/transsion/ardrawlines/viewholder/BrushViewHolder;->mBrushColorSelector:Lcom/transsion/ardrawlines/view/FlowRadioGroup;

    invoke-virtual {p2, p3}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 430
    :cond_8
    iget-object p3, p0, Lcom/transsion/ardrawlines/viewholder/BrushViewHolder;->mBrushColorSelector:Lcom/transsion/ardrawlines/view/FlowRadioGroup;

    invoke-virtual {p3, v0}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    invoke-virtual {p3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 431
    iget-object p3, p0, Lcom/transsion/ardrawlines/viewholder/BrushViewHolder;->mBrushColorSelector:Lcom/transsion/ardrawlines/view/FlowRadioGroup;

    invoke-virtual {p3, p2}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    .line 433
    :goto_2
    iget-object p2, p0, Lcom/transsion/ardrawlines/viewholder/BrushViewHolder;->mCurrentBrush:Lcom/transsion/ardrawlines/brush/Brush;

    sget-object p3, Lcom/transsion/ardrawlines/brush/BrushType;->GRADIENT:Lcom/transsion/ardrawlines/brush/BrushType;

    invoke-virtual {p2, p3}, Lcom/transsion/ardrawlines/brush/Brush;->setBrushType(Lcom/transsion/ardrawlines/brush/BrushType;)V

    .line 434
    iget-boolean p2, p0, Lcom/transsion/ardrawlines/viewholder/BrushViewHolder;->mBackSelectedDefaultColor:Z

    if-eqz p2, :cond_9

    .line 435
    iget-object p2, p0, Lcom/transsion/ardrawlines/viewholder/BrushViewHolder;->mCurrentBrush:Lcom/transsion/ardrawlines/brush/Brush;

    iget-object p3, p0, Lcom/transsion/ardrawlines/viewholder/BrushViewHolder;->mDefaultGradientBrush:Lcom/transsion/ardrawlines/brush/Brush;

    invoke-virtual {p3}, Lcom/transsion/ardrawlines/brush/Brush;->getBrushColor()I

    move-result p3

    invoke-virtual {p2, p3}, Lcom/transsion/ardrawlines/brush/Brush;->setBrushColor(I)V

    .line 436
    iget-object p2, p0, Lcom/transsion/ardrawlines/viewholder/BrushViewHolder;->mBrushColorSelector:Lcom/transsion/ardrawlines/view/FlowRadioGroup;

    iget-object p3, p0, Lcom/transsion/ardrawlines/viewholder/BrushViewHolder;->mCurrentBrush:Lcom/transsion/ardrawlines/brush/Brush;

    invoke-virtual {p3}, Lcom/transsion/ardrawlines/brush/Brush;->getBrushColor()I

    move-result p3

    invoke-virtual {p2, p3}, Lcom/transsion/ardrawlines/view/FlowRadioGroup;->setSelect(I)V

    .line 438
    :cond_9
    invoke-virtual {p0}, Lcom/transsion/ardrawlines/viewholder/BrushViewHolder;->sendSelectedBrush()V

    const-string p0, "gradient"

    .line 439
    invoke-static {p1, p0}, Lcom/transsion/analysislibrary/StatisticAnalysis;->sendMsg(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_6

    .line 408
    :cond_a
    invoke-static {}, Lcom/transsion/ardrawlines/utils/RTLUtil;->isRTL()Z

    move-result p4

    if-eqz p4, :cond_b

    .line 409
    iget-object p2, p0, Lcom/transsion/ardrawlines/viewholder/BrushViewHolder;->mBrushColorSelector:Lcom/transsion/ardrawlines/view/FlowRadioGroup;

    invoke-virtual {p2, v1}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    .line 410
    iget-object p2, p0, Lcom/transsion/ardrawlines/viewholder/BrushViewHolder;->mBrushColorSelector:Lcom/transsion/ardrawlines/view/FlowRadioGroup;

    invoke-virtual {p2, p3}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 412
    :cond_b
    iget-object p3, p0, Lcom/transsion/ardrawlines/viewholder/BrushViewHolder;->mBrushColorSelector:Lcom/transsion/ardrawlines/view/FlowRadioGroup;

    invoke-virtual {p3, v0}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    invoke-virtual {p3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 413
    iget-object p3, p0, Lcom/transsion/ardrawlines/viewholder/BrushViewHolder;->mBrushColorSelector:Lcom/transsion/ardrawlines/view/FlowRadioGroup;

    invoke-virtual {p3, p2}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    .line 415
    :goto_3
    iget-object p2, p0, Lcom/transsion/ardrawlines/viewholder/BrushViewHolder;->mCurrentBrush:Lcom/transsion/ardrawlines/brush/Brush;

    sget-object p3, Lcom/transsion/ardrawlines/brush/BrushType;->NEON:Lcom/transsion/ardrawlines/brush/BrushType;

    invoke-virtual {p2, p3}, Lcom/transsion/ardrawlines/brush/Brush;->setBrushType(Lcom/transsion/ardrawlines/brush/BrushType;)V

    .line 416
    iget-boolean p2, p0, Lcom/transsion/ardrawlines/viewholder/BrushViewHolder;->mBackSelectedDefaultColor:Z

    if-eqz p2, :cond_c

    .line 417
    iget-object p2, p0, Lcom/transsion/ardrawlines/viewholder/BrushViewHolder;->mCurrentBrush:Lcom/transsion/ardrawlines/brush/Brush;

    iget-object p3, p0, Lcom/transsion/ardrawlines/viewholder/BrushViewHolder;->mDefaultNeonBrush:Lcom/transsion/ardrawlines/brush/Brush;

    invoke-virtual {p3}, Lcom/transsion/ardrawlines/brush/Brush;->getBrushColor()I

    move-result p3

    invoke-virtual {p2, p3}, Lcom/transsion/ardrawlines/brush/Brush;->setBrushColor(I)V

    .line 418
    iget-object p2, p0, Lcom/transsion/ardrawlines/viewholder/BrushViewHolder;->mBrushColorSelector:Lcom/transsion/ardrawlines/view/FlowRadioGroup;

    iget-object p3, p0, Lcom/transsion/ardrawlines/viewholder/BrushViewHolder;->mCurrentBrush:Lcom/transsion/ardrawlines/brush/Brush;

    invoke-virtual {p3}, Lcom/transsion/ardrawlines/brush/Brush;->getBrushColor()I

    move-result p3

    invoke-virtual {p2, p3}, Lcom/transsion/ardrawlines/view/FlowRadioGroup;->setSelect(I)V

    .line 420
    :cond_c
    invoke-virtual {p0}, Lcom/transsion/ardrawlines/viewholder/BrushViewHolder;->sendSelectedBrush()V

    const-string p0, "neon"

    .line 421
    invoke-static {p1, p0}, Lcom/transsion/analysislibrary/StatisticAnalysis;->sendMsg(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_6

    .line 369
    :cond_d
    invoke-static {}, Lcom/transsion/ardrawlines/utils/RTLUtil;->isRTL()Z

    move-result p4

    if-eqz p4, :cond_e

    .line 370
    iget-object p2, p0, Lcom/transsion/ardrawlines/viewholder/BrushViewHolder;->mBrushColorSelector:Lcom/transsion/ardrawlines/view/FlowRadioGroup;

    invoke-virtual {p2, v1}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 371
    iget-object p2, p0, Lcom/transsion/ardrawlines/viewholder/BrushViewHolder;->mBrushColorSelector:Lcom/transsion/ardrawlines/view/FlowRadioGroup;

    invoke-virtual {p2, p3}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    .line 373
    :cond_e
    iget-object p3, p0, Lcom/transsion/ardrawlines/viewholder/BrushViewHolder;->mBrushColorSelector:Lcom/transsion/ardrawlines/view/FlowRadioGroup;

    invoke-virtual {p3, v0}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    invoke-virtual {p3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 374
    iget-object p3, p0, Lcom/transsion/ardrawlines/viewholder/BrushViewHolder;->mBrushColorSelector:Lcom/transsion/ardrawlines/view/FlowRadioGroup;

    invoke-virtual {p3, p2}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 376
    :goto_4
    iget-object p2, p0, Lcom/transsion/ardrawlines/viewholder/BrushViewHolder;->mCurrentBrush:Lcom/transsion/ardrawlines/brush/Brush;

    sget-object p3, Lcom/transsion/ardrawlines/brush/BrushType;->SOLID:Lcom/transsion/ardrawlines/brush/BrushType;

    invoke-virtual {p2, p3}, Lcom/transsion/ardrawlines/brush/Brush;->setBrushType(Lcom/transsion/ardrawlines/brush/BrushType;)V

    .line 377
    iget-boolean p2, p0, Lcom/transsion/ardrawlines/viewholder/BrushViewHolder;->mBackSelectedDefaultColor:Z

    if-eqz p2, :cond_f

    .line 378
    iget-object p2, p0, Lcom/transsion/ardrawlines/viewholder/BrushViewHolder;->mCurrentBrush:Lcom/transsion/ardrawlines/brush/Brush;

    invoke-virtual {p2, p3}, Lcom/transsion/ardrawlines/brush/Brush;->setBrushType(Lcom/transsion/ardrawlines/brush/BrushType;)V

    .line 379
    iget-object p2, p0, Lcom/transsion/ardrawlines/viewholder/BrushViewHolder;->mCurrentBrush:Lcom/transsion/ardrawlines/brush/Brush;

    iget p3, p0, Lcom/transsion/ardrawlines/viewholder/BrushViewHolder;->mSelectedUniqueColor:I

    invoke-virtual {p2, p3}, Lcom/transsion/ardrawlines/brush/Brush;->setBrushColor(I)V

    .line 380
    iget-object p2, p0, Lcom/transsion/ardrawlines/viewholder/BrushViewHolder;->mBrushColorSelector:Lcom/transsion/ardrawlines/view/FlowRadioGroup;

    iget-object p3, p0, Lcom/transsion/ardrawlines/viewholder/BrushViewHolder;->mCurrentBrush:Lcom/transsion/ardrawlines/brush/Brush;

    invoke-virtual {p3}, Lcom/transsion/ardrawlines/brush/Brush;->getBrushColor()I

    move-result p3

    invoke-virtual {p2, p3}, Lcom/transsion/ardrawlines/view/FlowRadioGroup;->setSelect(I)V

    .line 381
    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    new-instance p3, Lcom/transsion/ardrawlines/viewholder/BrushViewHolder$$ExternalSyntheticLambda2;

    invoke-direct {p3, p0}, Lcom/transsion/ardrawlines/viewholder/BrushViewHolder$$ExternalSyntheticLambda2;-><init>(Lcom/transsion/ardrawlines/viewholder/BrushViewHolder;)V

    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_5

    .line 392
    :cond_f
    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    new-instance p3, Lcom/transsion/ardrawlines/viewholder/BrushViewHolder$$ExternalSyntheticLambda3;

    invoke-direct {p3, p0}, Lcom/transsion/ardrawlines/viewholder/BrushViewHolder$$ExternalSyntheticLambda3;-><init>(Lcom/transsion/ardrawlines/viewholder/BrushViewHolder;)V

    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 402
    :goto_5
    invoke-virtual {p0}, Lcom/transsion/ardrawlines/viewholder/BrushViewHolder;->sendSelectedBrush()V

    const-string p0, "solid"

    .line 403
    invoke-static {p1, p0}, Lcom/transsion/analysislibrary/StatisticAnalysis;->sendMsg(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_6

    .line 478
    :cond_10
    iget-object p2, p0, Lcom/transsion/ardrawlines/viewholder/BrushViewHolder;->mBrushColorSelector:Lcom/transsion/ardrawlines/view/FlowRadioGroup;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_12

    .line 481
    invoke-static {}, Lcom/transsion/ardrawlines/utils/RTLUtil;->isRTL()Z

    move-result p1

    if-eqz p1, :cond_11

    .line 482
    iget-object p1, p0, Lcom/transsion/ardrawlines/viewholder/BrushViewHolder;->mBrushColorSelector:Lcom/transsion/ardrawlines/view/FlowRadioGroup;

    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getChildCount()I

    move-result p1

    sub-int/2addr p1, p3

    sub-int p4, p1, p4

    .line 484
    :cond_11
    sget-object p1, Lcom/transsion/ardrawlines/viewholder/BrushViewHolder;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "BrushColor Selected = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    iget-object p1, p0, Lcom/transsion/ardrawlines/viewholder/BrushViewHolder;->mBrushHintView:Lcom/transsion/ardrawlines/view/CircleView;

    iget-object p2, p0, Lcom/transsion/ardrawlines/viewholder/BrushViewHolder;->mColorSparseArray:Landroid/util/SparseArray;

    invoke-virtual {p2, p4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/transsion/ardrawlines/view/CircleView;->setColor(I)V

    .line 486
    iget-object p1, p0, Lcom/transsion/ardrawlines/viewholder/BrushViewHolder;->mCurrentBrush:Lcom/transsion/ardrawlines/brush/Brush;

    invoke-virtual {p1, p4}, Lcom/transsion/ardrawlines/brush/Brush;->setBrushColor(I)V

    .line 487
    invoke-virtual {p0}, Lcom/transsion/ardrawlines/viewholder/BrushViewHolder;->sendSelectedBrush()V

    :cond_12
    :goto_6
    return-void
.end method

.method public onClickChildSelected(Landroid/view/View;Landroid/view/View;Landroid/view/View;I)V
    .locals 0

    .line 325
    iget-object p2, p0, Lcom/transsion/ardrawlines/viewholder/BrushViewHolder;->mBrushColorSelector:Lcom/transsion/ardrawlines/view/FlowRadioGroup;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 p3, 0x1

    if-eqz p2, :cond_6

    .line 328
    invoke-static {}, Lcom/transsion/ardrawlines/utils/RTLUtil;->isRTL()Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_2

    if-eqz p4, :cond_1

    if-ne p4, p3, :cond_0

    goto :goto_0

    .line 334
    :cond_0
    iput-boolean p2, p0, Lcom/transsion/ardrawlines/viewholder/BrushViewHolder;->mBackSelectedDefaultColor:Z

    goto :goto_2

    .line 331
    :cond_1
    :goto_0
    iput-boolean p3, p0, Lcom/transsion/ardrawlines/viewholder/BrushViewHolder;->mBackSelectedDefaultColor:Z

    .line 332
    iput p4, p0, Lcom/transsion/ardrawlines/viewholder/BrushViewHolder;->mSelectedUniqueColor:I

    goto :goto_2

    :cond_2
    const/4 p1, 0x6

    if-eq p4, p1, :cond_4

    const/4 p1, 0x7

    if-ne p4, p1, :cond_3

    goto :goto_1

    .line 341
    :cond_3
    iput-boolean p2, p0, Lcom/transsion/ardrawlines/viewholder/BrushViewHolder;->mBackSelectedDefaultColor:Z

    goto :goto_2

    .line 338
    :cond_4
    :goto_1
    iput-boolean p3, p0, Lcom/transsion/ardrawlines/viewholder/BrushViewHolder;->mBackSelectedDefaultColor:Z

    .line 339
    iput p4, p0, Lcom/transsion/ardrawlines/viewholder/BrushViewHolder;->mSelectedUniqueColor:I

    .line 346
    :goto_2
    invoke-static {}, Lcom/transsion/ardrawlines/utils/RTLUtil;->isRTL()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 347
    iget-object p0, p0, Lcom/transsion/ardrawlines/viewholder/BrushViewHolder;->mBrushColorSelector:Lcom/transsion/ardrawlines/view/FlowRadioGroup;

    invoke-virtual {p0}, Landroid/widget/RadioGroup;->getChildCount()I

    move-result p0

    sub-int/2addr p0, p3

    sub-int p4, p0, p4

    .line 349
    :cond_5
    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "ml_color_cl"

    invoke-static {p1, p0}, Lcom/transsion/analysislibrary/StatisticAnalysis;->sendMsg(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 350
    sget-object p0, Lcom/transsion/ardrawlines/viewholder/BrushViewHolder;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "ml_color_cl "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 351
    :cond_6
    iget-object p2, p0, Lcom/transsion/ardrawlines/viewholder/BrushViewHolder;->mBrushTypeSelector:Lcom/transsion/ardrawlines/view/FlowRadioGroup;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 352
    invoke-virtual {p0, p3}, Lcom/transsion/ardrawlines/viewholder/BrushViewHolder;->onShowBrushColorView(Z)V

    :cond_7
    :goto_3
    return-void
.end method

.method public onDestroy(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 1

    .line 264
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 266
    iget-object v0, p0, Lcom/transsion/ardrawlines/viewholder/BrushViewHolder;->mVolumeChangeObserver:Lcom/transsion/ardrawlines/service/VolumeChangeObserver;

    invoke-virtual {v0}, Lcom/transsion/ardrawlines/service/VolumeChangeObserver;->unregisterReceiver()V

    .line 267
    invoke-super {p0, p1}, Lcom/transsion/ardrawlines/base/BaseViewHolder;->onDestroy(Landroidx/lifecycle/LifecycleOwner;)V

    return-void
.end method

.method public onHandleMessage(Lcom/transsion/ardrawlines/unity/MessageEvent;)V
    .locals 6
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 158
    invoke-virtual {p1}, Lcom/transsion/ardrawlines/unity/MessageEvent;->getEvent()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DRAWSTATE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 159
    sget-object v0, Lcom/transsion/ardrawlines/viewholder/BrushViewHolder;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EventBus MessageEvent : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/transsion/ardrawlines/unity/MessageEvent;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    invoke-virtual {p1}, Lcom/transsion/ardrawlines/unity/MessageEvent;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const/4 v1, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x4

    const/4 v4, 0x1

    const/4 v5, 0x0

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v2, "UndoNoLines"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v3

    goto :goto_0

    :sswitch_1
    const-string v2, "NoDrawing"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_2
    const-string v2, "Drawing"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_3
    const-string v2, "RedoDisable"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    move v1, v4

    goto :goto_0

    :sswitch_4
    const-string v2, "RedoEnable"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    move v1, v5

    :goto_0
    packed-switch v1, :pswitch_data_0

    goto :goto_1

    .line 179
    :pswitch_0
    iget-object p1, p0, Lcom/transsion/ardrawlines/viewholder/BrushViewHolder;->mClearButton:Landroid/widget/Button;

    invoke-virtual {p1, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 180
    iget-object p1, p0, Lcom/transsion/ardrawlines/viewholder/BrushViewHolder;->mUndoButton:Landroid/widget/Button;

    invoke-virtual {p1, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 181
    iget-object p0, p0, Lcom/transsion/ardrawlines/viewholder/BrushViewHolder;->mRedoButton:Landroid/widget/Button;

    invoke-virtual {p0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    const-string p0, "UndoNoLines ... "

    .line 182
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 170
    :pswitch_1
    iget-object p1, p0, Lcom/transsion/ardrawlines/viewholder/BrushViewHolder;->mRevokeArea:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 171
    iget-object p1, p0, Lcom/transsion/ardrawlines/viewholder/BrushViewHolder;->mClearButton:Landroid/widget/Button;

    invoke-virtual {p1, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 172
    iget-object p1, p0, Lcom/transsion/ardrawlines/viewholder/BrushViewHolder;->mClearButton:Landroid/widget/Button;

    invoke-virtual {p1, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 173
    iget-object p1, p0, Lcom/transsion/ardrawlines/viewholder/BrushViewHolder;->mUndoButton:Landroid/widget/Button;

    invoke-virtual {p1, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 174
    iget-object p1, p0, Lcom/transsion/ardrawlines/viewholder/BrushViewHolder;->mRedoButton:Landroid/widget/Button;

    invoke-virtual {p1, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 175
    iput-boolean v5, p0, Lcom/transsion/ardrawlines/viewholder/BrushViewHolder;->isPaintingExist:Z

    const-string p0, "NoDrawing ..."

    .line 176
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 162
    :pswitch_2
    iget-object p1, p0, Lcom/transsion/ardrawlines/viewholder/BrushViewHolder;->mRevokeArea:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 163
    iget-object p1, p0, Lcom/transsion/ardrawlines/viewholder/BrushViewHolder;->mClearButton:Landroid/widget/Button;

    invoke-virtual {p1, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 164
    iget-object p1, p0, Lcom/transsion/ardrawlines/viewholder/BrushViewHolder;->mClearButton:Landroid/widget/Button;

    invoke-virtual {p1, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 165
    iget-object p1, p0, Lcom/transsion/ardrawlines/viewholder/BrushViewHolder;->mUndoButton:Landroid/widget/Button;

    invoke-virtual {p1, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 166
    iput-boolean v4, p0, Lcom/transsion/ardrawlines/viewholder/BrushViewHolder;->isPaintingExist:Z

    const-string p0, "Drawing ..."

    .line 167
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 189
    :pswitch_3
    iget-object p0, p0, Lcom/transsion/ardrawlines/viewholder/BrushViewHolder;->mRedoButton:Landroid/widget/Button;

    invoke-virtual {p0, v5}, Landroid/widget/Button;->setEnabled(Z)V

    const-string p0, "RedoDisable ..."

    .line 190
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 185
    :pswitch_4
    iget-object p0, p0, Lcom/transsion/ardrawlines/viewholder/BrushViewHolder;->mRedoButton:Landroid/widget/Button;

    invoke-virtual {p0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    const-string p0, "RedoEnable ..."

    .line 186
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x41b6aebf -> :sswitch_4
        -0x31909116 -> :sswitch_3
        -0x2ac13402 -> :sswitch_2
        0xcbb12fd -> :sswitch_1
        0x3ccc201a -> :sswitch_0
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

.method public onPause(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0

    .line 254
    invoke-super {p0, p1}, Lcom/transsion/ardrawlines/base/BaseViewHolder;->onPause(Landroidx/lifecycle/LifecycleOwner;)V

    const/4 p1, 0x0

    .line 255
    invoke-virtual {p0, p1}, Lcom/transsion/ardrawlines/viewholder/BrushViewHolder;->onShowBrushColorView(Z)V

    .line 257
    iget-object p1, p0, Lcom/transsion/ardrawlines/viewholder/BrushViewHolder;->mClearDialog:Lcom/transsion/widgetslib/dialog/PromptDialog;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 258
    iget-object p0, p0, Lcom/transsion/ardrawlines/viewholder/BrushViewHolder;->mClearDialog:Lcom/transsion/widgetslib/dialog/PromptDialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2

    .line 494
    sget-object p1, Lcom/transsion/ardrawlines/viewholder/BrushViewHolder;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "SeekBar onProgressChanged = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    int-to-double p2, p2

    const-wide v0, 0x3f947ae147ae147bL    # 0.02

    mul-double/2addr p2, v0

    const-wide/high16 v0, 0x4004000000000000L    # 2.5

    add-double/2addr p2, v0

    double-to-float p2, p2

    const/high16 p3, 0x41700000    # 15.0f

    mul-float/2addr p2, p3

    .line 496
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "brushRadius = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    iget-object p0, p0, Lcom/transsion/ardrawlines/viewholder/BrushViewHolder;->mBrushHintView:Lcom/transsion/ardrawlines/view/CircleView;

    invoke-virtual {p0, p2}, Lcom/transsion/ardrawlines/view/CircleView;->setRadius(F)V

    return-void
.end method

.method public onResume(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 1

    .line 237
    invoke-super {p0, p1}, Lcom/transsion/ardrawlines/base/BaseViewHolder;->onResume(Landroidx/lifecycle/LifecycleOwner;)V

    .line 238
    iget-object p1, p0, Lcom/transsion/ardrawlines/viewholder/BrushViewHolder;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/ardrawlines/ARDrawLinesActivity;

    invoke-virtual {p1}, Lcom/transsion/ardrawlines/ARDrawLinesActivity;->getUnityPlayer()Lcom/unity3d/player/UnityPlayer;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 239
    iget-object p1, p0, Lcom/transsion/ardrawlines/viewholder/BrushViewHolder;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/ardrawlines/ARDrawLinesActivity;

    invoke-virtual {p1}, Lcom/transsion/ardrawlines/ARDrawLinesActivity;->getUnityPlayer()Lcom/unity3d/player/UnityPlayer;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/ardrawlines/viewholder/BrushViewHolder;->mCurrentUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    .line 240
    new-instance v0, Lcom/transsion/ardrawlines/viewholder/BrushViewHolder$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/transsion/ardrawlines/viewholder/BrushViewHolder$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/ardrawlines/viewholder/BrushViewHolder;)V

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 243
    :cond_0
    iget-object p1, p0, Lcom/transsion/ardrawlines/viewholder/BrushViewHolder;->mVolumeChangeObserver:Lcom/transsion/ardrawlines/service/VolumeChangeObserver;

    invoke-virtual {p1}, Lcom/transsion/ardrawlines/service/VolumeChangeObserver;->registerReceiver()V

    .line 245
    iget-object p1, p0, Lcom/transsion/ardrawlines/viewholder/BrushViewHolder;->mVolumeChangeObserver:Lcom/transsion/ardrawlines/service/VolumeChangeObserver;

    new-instance v0, Lcom/transsion/ardrawlines/viewholder/BrushViewHolder$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/transsion/ardrawlines/viewholder/BrushViewHolder$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/ardrawlines/viewholder/BrushViewHolder;)V

    invoke-virtual {p1, v0}, Lcom/transsion/ardrawlines/service/VolumeChangeObserver;->setVolumeChangeListener(Lcom/transsion/ardrawlines/service/VolumeChangeObserver$VolumeChangeListener;)V

    .line 247
    sget-boolean p1, Lcom/transsion/ardrawlines/viewholder/BrushViewHolder;->SET_AUDIO_SOURCE_MUTE:Z

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 248
    invoke-virtual {p0, v0}, Lcom/transsion/ardrawlines/viewholder/BrushViewHolder;->setMuteStatus(Z)V

    :cond_1
    return-void
.end method

.method public onShowBrushColorView(Z)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x4

    if-eqz p1, :cond_0

    .line 526
    iget-object p1, p0, Lcom/transsion/ardrawlines/viewholder/BrushViewHolder;->mBrushColorArea:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 527
    iget-object p0, p0, Lcom/transsion/ardrawlines/viewholder/BrushViewHolder;->mPaintingOperationArea:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0

    .line 529
    :cond_0
    iget-object p1, p0, Lcom/transsion/ardrawlines/viewholder/BrushViewHolder;->mBrushColorArea:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 530
    iget-object p0, p0, Lcom/transsion/ardrawlines/viewholder/BrushViewHolder;->mPaintingOperationArea:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 3

    .line 502
    sget-object v0, Lcom/transsion/ardrawlines/viewholder/BrushViewHolder;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SeekBar onStartTrackingTouch "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    iget-object p0, p0, Lcom/transsion/ardrawlines/viewholder/BrushViewHolder;->mBrushHintView:Lcom/transsion/ardrawlines/view/CircleView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 3

    .line 508
    sget-object v0, Lcom/transsion/ardrawlines/viewholder/BrushViewHolder;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SeekBar onStopTrackingTouch = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    iget-object v0, p0, Lcom/transsion/ardrawlines/viewholder/BrushViewHolder;->mBrushHintView:Lcom/transsion/ardrawlines/view/CircleView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 510
    iget-object v0, p0, Lcom/transsion/ardrawlines/viewholder/BrushViewHolder;->mCurrentBrush:Lcom/transsion/ardrawlines/brush/Brush;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/transsion/ardrawlines/brush/Brush;->setBrushSize(I)V

    .line 511
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "ml_size_swipe"

    invoke-static {v0, p1}, Lcom/transsion/analysislibrary/StatisticAnalysis;->sendMsg(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 512
    invoke-virtual {p0}, Lcom/transsion/ardrawlines/viewholder/BrushViewHolder;->sendSelectedBrush()V

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 313
    iget-object p2, p0, Lcom/transsion/ardrawlines/viewholder/BrushViewHolder;->mCurrentUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 314
    invoke-virtual {p0, v0}, Lcom/transsion/ardrawlines/viewholder/BrushViewHolder;->onShowBrushColorView(Z)V

    .line 317
    :cond_0
    iget-object p2, p0, Lcom/transsion/ardrawlines/viewholder/BrushViewHolder;->mBrushColorArea:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    iget-object p2, p0, Lcom/transsion/ardrawlines/viewholder/BrushViewHolder;->mPaintingOperationArea:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    iget-object p0, p0, Lcom/transsion/ardrawlines/viewholder/BrushViewHolder;->mRevokeArea:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    return v0

    :cond_2
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public onViewClicked(Landroid/view/View;)V
    .locals 3

    .line 272
    iget-object v0, p0, Lcom/transsion/ardrawlines/viewholder/BrushViewHolder;->mSoundButton:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 273
    invoke-virtual {p0}, Lcom/transsion/ardrawlines/viewholder/BrushViewHolder;->soundMute()V

    goto :goto_0

    .line 274
    :cond_0
    iget-object v0, p0, Lcom/transsion/ardrawlines/viewholder/BrushViewHolder;->mClearButton:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 275
    invoke-virtual {p0}, Lcom/transsion/ardrawlines/viewholder/BrushViewHolder;->clearLines()V

    const-string p0, "ml_clearall_cl"

    .line 276
    invoke-static {p0}, Lcom/transsion/analysislibrary/StatisticAnalysis;->sendMsg(Ljava/lang/Object;)V

    goto :goto_0

    .line 277
    :cond_1
    iget-object v0, p0, Lcom/transsion/ardrawlines/viewholder/BrushViewHolder;->mUndoButton:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, ""

    const-string v2, "AR Session Origin"

    if-eqz v0, :cond_2

    const-string p0, "Revoke"

    .line 279
    invoke-static {v2, p0, v1}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "ml_undo_cl"

    .line 280
    invoke-static {p0}, Lcom/transsion/analysislibrary/StatisticAnalysis;->sendMsg(Ljava/lang/Object;)V

    goto :goto_0

    .line 281
    :cond_2
    iget-object p0, p0, Lcom/transsion/ardrawlines/viewholder/BrushViewHolder;->mRedoButton:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    const-string p0, "Undo"

    .line 283
    invoke-static {v2, p0, v1}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "ml_redo_cl"

    .line 284
    invoke-static {p0}, Lcom/transsion/analysislibrary/StatisticAnalysis;->sendMsg(Ljava/lang/Object;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onVolumeChanged(I)V
    .locals 0

    .line 198
    invoke-virtual {p0}, Lcom/transsion/ardrawlines/viewholder/BrushViewHolder;->setCurrentMusicVolume()V

    return-void
.end method

.method public sendSelectedBrush()V
    .locals 3

    .line 518
    invoke-static {}, Lcom/transsion/ardrawlines/brush/GsonManager;->getInstance()Lcom/transsion/ardrawlines/brush/GsonManager;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/ardrawlines/viewholder/BrushViewHolder;->mCurrentBrush:Lcom/transsion/ardrawlines/brush/Brush;

    invoke-virtual {v0, v1}, Lcom/transsion/ardrawlines/brush/GsonManager;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "AR Session Origin"

    const-string v2, "onBrushSelected"

    invoke-static {v1, v2, v0}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    iget-object p0, p0, Lcom/transsion/ardrawlines/viewholder/BrushViewHolder;->mCurrentBrush:Lcom/transsion/ardrawlines/brush/Brush;

    invoke-virtual {p0}, Lcom/transsion/ardrawlines/brush/Brush;->getBrushType()Lcom/transsion/ardrawlines/brush/BrushType;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p0

    .line 520
    sget-object v0, Lcom/transsion/ardrawlines/viewholder/BrushViewHolder;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCurrentBrush Type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "Audio Source"

    const-string v1, "onAudioSelected"

    .line 521
    invoke-static {v0, v1, p0}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setCurrentMusicVolume()V
    .locals 1

    .line 205
    iget-object v0, p0, Lcom/transsion/ardrawlines/viewholder/BrushViewHolder;->mVolumeChangeObserver:Lcom/transsion/ardrawlines/service/VolumeChangeObserver;

    invoke-virtual {v0}, Lcom/transsion/ardrawlines/service/VolumeChangeObserver;->getCurrentMusicVolume()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 206
    invoke-virtual {p0, v0}, Lcom/transsion/ardrawlines/viewholder/BrushViewHolder;->setMuteStatus(Z)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 208
    invoke-virtual {p0, v0}, Lcom/transsion/ardrawlines/viewholder/BrushViewHolder;->setMuteStatus(Z)V

    :goto_0
    return-void
.end method

.method public setMuteStatus(Z)V
    .locals 3

    const-string v0, "ml_sound_status"

    const-string v1, ""

    const-string v2, "Audio Source"

    if-eqz p1, :cond_0

    const-string p1, "CloseAudio"

    .line 222
    invoke-static {v2, p1, v1}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 223
    sput-boolean p1, Lcom/transsion/ardrawlines/viewholder/BrushViewHolder;->SET_AUDIO_SOURCE_MUTE:Z

    .line 224
    iget-object p0, p0, Lcom/transsion/ardrawlines/viewholder/BrushViewHolder;->mSoundButton:Landroid/widget/ImageView;

    sget p1, Lcom/transsion/ardrawlines/R$mipmap;->ic_sound_off:I

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    const-string p0, "mute"

    .line 225
    invoke-static {v0, p0}, Lcom/transsion/analysislibrary/StatisticAnalysis;->sendMsg(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string p1, "OpenAudio"

    .line 228
    invoke-static {v2, p1, v1}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 229
    sput-boolean p1, Lcom/transsion/ardrawlines/viewholder/BrushViewHolder;->SET_AUDIO_SOURCE_MUTE:Z

    .line 230
    iget-object p0, p0, Lcom/transsion/ardrawlines/viewholder/BrushViewHolder;->mSoundButton:Landroid/widget/ImageView;

    sget p1, Lcom/transsion/ardrawlines/R$mipmap;->ic_sound_on:I

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    const-string p0, "unmute"

    .line 231
    invoke-static {v0, p0}, Lcom/transsion/analysislibrary/StatisticAnalysis;->sendMsg(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public soundMute()V
    .locals 1

    .line 216
    sget-boolean v0, Lcom/transsion/ardrawlines/viewholder/BrushViewHolder;->SET_AUDIO_SOURCE_MUTE:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/transsion/ardrawlines/viewholder/BrushViewHolder;->setMuteStatus(Z)V

    return-void
.end method
