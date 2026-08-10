.class public Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot;
.super Landroid/widget/FrameLayout;
.source "FaceBeautyRoot.java"

# interfaces
.implements Lcom/transsion/camera/feature/mode/makeup/ui/interactive/IFeature;


# static fields
.field private static final CUSTOM_ID_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final FACE_BEAUTY_INFO_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private isClickDialog:Z

.field private final mAdapter:Lcom/transsion/camera/feature/mode/makeup/adapter/FaceBeautyAdapter;

.field private final mAutoHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

.field private mCameraId:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private mCurrFeatureKey:Ljava/lang/String;

.field private mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

.field private mDialog:Lcom/transsion/widgetslib/dialog/PromptDialog;

.field private mFaceBeautyHelper:Lcom/transsion/camera/feature/mode/makeup/helper/FaceBeautyHelper;

.field private mFaceBeautySetting:Lcom/transsion/camera/app/common/setting/ISetting;

.field private mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

.field private mITopUI:Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;

.field private mOriginValue:Ljava/lang/String;

.field private mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public static synthetic $r8$lambda$CN1ekNAdw8T9lp6joXuK_5ZcYGE(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot;->lambda$showDialog$0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$qDEOQ4ZNNNtl6JrkZ9fUXN4su7o(Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot;->lambda$showDialog$1(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 53
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "FaceBeautyRoot"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    .line 73
    new-instance v0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot$1;

    invoke-direct {v0}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot$1;-><init>()V

    sput-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot;->CUSTOM_ID_MAP:Ljava/util/HashMap;

    .line 83
    new-instance v0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot$2;

    invoke-direct {v0}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot$2;-><init>()V

    sput-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot;->FACE_BEAUTY_INFO_LIST:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 209
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 57
    new-instance p2, Lcom/transsion/camera/app/common/ui/HintInfo;

    const/4 v0, 0x1

    invoke-direct {p2, v0}, Lcom/transsion/camera/app/common/ui/HintInfo;-><init>(I)V

    iput-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot;->mAutoHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    const-string p2, ""

    .line 62
    iput-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot;->mOriginValue:Ljava/lang/String;

    const/4 p2, 0x0

    .line 71
    iput-boolean p2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot;->isClickDialog:Z

    .line 210
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot;->mContext:Landroid/content/Context;

    .line 211
    new-instance p2, Lcom/transsion/camera/feature/mode/makeup/adapter/FaceBeautyAdapter;

    sget-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot;->FACE_BEAUTY_INFO_LIST:Ljava/util/List;

    new-instance v1, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot$3;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot$3;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot;)V

    invoke-direct {p2, p1, v0, v1}, Lcom/transsion/camera/feature/mode/makeup/adapter/FaceBeautyAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/transsion/camera/feature/mode/makeup/listener/RvListener;)V

    iput-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot;->mAdapter:Lcom/transsion/camera/feature/mode/makeup/adapter/FaceBeautyAdapter;

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot;Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyItemInfo;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot;->updateValueByInfo(Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyItemInfo;)V

    return-void
.end method

.method static synthetic access$100(Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot;Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyItemInfo;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot;->updateUIByInfo(Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyItemInfo;)V

    return-void
.end method

.method static synthetic access$200(Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot;)Lcom/transsion/camera/feature/mode/makeup/helper/FaceBeautyHelper;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot;->mFaceBeautyHelper:Lcom/transsion/camera/feature/mode/makeup/helper/FaceBeautyHelper;

    return-object p0
.end method

.method private hideAutoHint()V
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot;->mAutoHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    if-eqz p0, :cond_0

    .line 146
    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    :cond_0
    return-void
.end method

.method private static synthetic lambda$showDialog$0(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 158
    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method private synthetic lambda$showDialog$1(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 160
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 161
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot;->mFaceBeautyHelper:Lcom/transsion/camera/feature/mode/makeup/helper/FaceBeautyHelper;

    if-eqz p1, :cond_0

    .line 162
    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/makeup/helper/FaceBeautyHelper;->restoreDefault()V

    const/4 p1, 0x1

    .line 163
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot;->isClickDialog:Z

    .line 164
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot;->updateState()V

    .line 165
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot;->mAdapter:Lcom/transsion/camera/feature/mode/makeup/adapter/FaceBeautyAdapter;

    invoke-virtual {p2, p1}, Lcom/transsion/camera/feature/mode/makeup/adapter/RvAdapter;->updateCustomDefault(Z)V

    .line 166
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot;->mFaceBeautySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    const-string p1, "custom"

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private showAutoHint(Ljava/lang/String;)V
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot;->mAutoHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    if-eqz v0, :cond_0

    .line 138
    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    .line 139
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot;->mAutoHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/ui/HintInfo;->setHighlight(Z)V

    .line 140
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot;->mAutoHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->showHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    :cond_0
    return-void
.end method

.method private showDialog()V
    .locals 3

    .line 151
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot;->mDialog:Lcom/transsion/widgetslib/dialog/PromptDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot;->mDialog:Lcom/transsion/widgetslib/dialog/PromptDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 155
    :cond_0
    new-instance v0, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, ""

    .line 156
    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    move-result-object v0

    sget v1, Lcom/transsion/camera/feature/makeup/R$string;->multi_face_beauty_dailog_message:I

    .line 157
    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setMessage(I)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    move-result-object v0

    sget v1, Lcom/transsion/camera/feature/makeup/R$string;->multi_face_beauty_dailog_negative_title:I

    new-instance v2, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot$$ExternalSyntheticLambda0;-><init>()V

    .line 158
    invoke-virtual {v0, v1, v2}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    move-result-object v0

    sget v1, Lcom/transsion/camera/feature/makeup/R$string;->multi_face_beauty_dailog_Positive_title:I

    new-instance v2, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot;)V

    .line 159
    invoke-virtual {v0, v1, v2}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    move-result-object v0

    .line 169
    invoke-virtual {v0}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->create()Lcom/transsion/widgetslib/dialog/PromptDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot;->mDialog:Lcom/transsion/widgetslib/dialog/PromptDialog;

    .line 170
    invoke-virtual {v0}, Lcom/transsion/widgetslib/dialog/PromptDialog;->show()V

    return-void
.end method

.method private updateState()V
    .locals 2

    .line 226
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot;->mAdapter:Lcom/transsion/camera/feature/mode/makeup/adapter/FaceBeautyAdapter;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/makeup/adapter/RvAdapter;->getCurrentItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyItemInfo;

    if-eqz v0, :cond_0

    .line 228
    iget-object v1, v0, Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyItemInfo;->key:Ljava/lang/String;

    iget v0, v0, Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyItemInfo;->featureId:I

    invoke-direct {p0, v1, v0}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot;->updateUIStateByKey(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method private updateUIByInfo(Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyItemInfo;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 98
    :cond_0
    iget v0, p1, Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyItemInfo;->featureId:I

    if-nez v0, :cond_1

    .line 99
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot;->showDialog()V

    goto :goto_1

    .line 101
    :cond_1
    iget-object p1, p1, Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyItemInfo;->key:Ljava/lang/String;

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot;->mCurrFeatureKey:Ljava/lang/String;

    const/4 p1, 0x1

    if-ne v0, p1, :cond_2

    .line 103
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot;->mContext:Landroid/content/Context;

    sget v1, Lcom/transsion/camera/feature/makeup/R$string;->multi_fb_hint_ai_enbale:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot;->showAutoHint(Ljava/lang/String;)V

    goto :goto_0

    .line 105
    :cond_2
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot;->hideAutoHint()V

    .line 107
    :goto_0
    sget-object v0, Lcom/transsion/camera/feature/mode/makeup/helper/FaceBeautyHelper;->CUSTOM_KEY_LIST:Ljava/util/List;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot;->mCurrFeatureKey:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 108
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot;->mFaceBeautyHelper:Lcom/transsion/camera/feature/mode/makeup/helper/FaceBeautyHelper;

    if-eqz v0, :cond_4

    .line 109
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot;->mCurrFeatureKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/mode/makeup/helper/FaceBeautyHelper;->getFeatureProgress(Ljava/lang/String;)I

    move-result v0

    .line 110
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot;->mITopUI:Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;

    if-eqz v1, :cond_4

    const/4 v2, 0x2

    .line 111
    invoke-interface {v1, v2, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;->notifyState(IZ)V

    .line 112
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot;->mITopUI:Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;

    const/16 p1, 0x64

    const/4 v1, 0x0

    invoke-interface {p0, p1, v1, v1, v0}, Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;->notifyProgress(IIII)V

    goto :goto_1

    .line 116
    :cond_3
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot;->mITopUI:Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;

    if-eqz p0, :cond_4

    const/4 v0, 0x3

    .line 117
    invoke-interface {p0, v0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;->notifyState(IZ)V

    :cond_4
    :goto_1
    return-void
.end method

.method private updateUIStateByKey(Ljava/lang/String;I)V
    .locals 2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 187
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot;->mContext:Landroid/content/Context;

    sget v0, Lcom/transsion/camera/feature/makeup/R$string;->multi_fb_hint_ai_enbale:I

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot;->showAutoHint(Ljava/lang/String;)V

    goto :goto_0

    .line 189
    :cond_0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot;->hideAutoHint()V

    .line 191
    :goto_0
    sget-object p2, Lcom/transsion/camera/feature/mode/makeup/helper/FaceBeautyHelper;->CUSTOM_KEY_LIST:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    .line 192
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot;->mFaceBeautyHelper:Lcom/transsion/camera/feature/mode/makeup/helper/FaceBeautyHelper;

    if-eqz p2, :cond_3

    .line 193
    invoke-virtual {p2, p1}, Lcom/transsion/camera/feature/mode/makeup/helper/FaceBeautyHelper;->getFeatureProgress(Ljava/lang/String;)I

    move-result p1

    .line 194
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot;->mITopUI:Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;

    if-eqz p2, :cond_3

    .line 195
    iget-boolean v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot;->isClickDialog:Z

    if-nez v1, :cond_1

    const/4 v1, 0x2

    .line 196
    invoke-interface {p2, v1, v0}, Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;->notifyState(IZ)V

    .line 198
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot;->mITopUI:Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;

    const/16 p2, 0x64

    invoke-interface {p0, p2, v0, v0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;->notifyProgress(IIII)V

    goto :goto_1

    .line 202
    :cond_2
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot;->mITopUI:Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;

    if-eqz p0, :cond_3

    const/4 p1, 0x3

    .line 203
    invoke-interface {p0, p1, v0}, Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;->notifyState(IZ)V

    :cond_3
    :goto_1
    return-void
.end method

.method private updateValueByInfo(Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyItemInfo;)V
    .locals 2

    if-eqz p1, :cond_2

    .line 124
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot;->mFaceBeautyHelper:Lcom/transsion/camera/feature/mode/makeup/helper/FaceBeautyHelper;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot;->mCameraId:Ljava/lang/String;

    .line 125
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot;->mFaceBeautyHelper:Lcom/transsion/camera/feature/mode/makeup/helper/FaceBeautyHelper;

    iget v1, p1, Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyItemInfo;->featureId:I

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/mode/makeup/helper/FaceBeautyHelper;->updateFeatureId(I)V

    .line 129
    sget-object v0, Lcom/transsion/camera/feature/mode/makeup/helper/FaceBeautyHelper;->CUSTOM_KEY_LIST:Ljava/util/List;

    iget-object p1, p1, Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyItemInfo;->key:Ljava/lang/String;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 130
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot;->mFaceBeautySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    const-string p1, "custom"

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    goto :goto_0

    .line 132
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot;->mFaceBeautySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    const-string p1, "aiv2"

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public closeContrast(Z)V
    .locals 0

    .line 302
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot;->mFaceBeautySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz p1, :cond_0

    .line 303
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot;->mOriginValue:Ljava/lang/String;

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public hideDialog()V
    .locals 1

    .line 174
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot;->mDialog:Lcom/transsion/widgetslib/dialog/PromptDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot;->mDialog:Lcom/transsion/widgetslib/dialog/PromptDialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 4

    .line 234
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 235
    sget v0, Lcom/transsion/camera/feature/makeup/R$id;->fb_rv:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 236
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 237
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 236
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 238
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/transsion/camera/feature/mode/makeup/ui/SimpleItemDecoration;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/transsion/camera/feature/mode/makeup/ui/SimpleItemDecoration;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 239
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot;->mAdapter:Lcom/transsion/camera/feature/mode/makeup/adapter/FaceBeautyAdapter;

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public openContrast()V
    .locals 1

    .line 294
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot;->mFaceBeautySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz v0, :cond_0

    .line 295
    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot;->mOriginValue:Ljava/lang/String;

    .line 296
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot;->mFaceBeautySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    const-string v0, "contrast_on"

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public progressChanged(I)V
    .locals 2

    .line 285
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot;->mFaceBeautyHelper:Lcom/transsion/camera/feature/mode/makeup/helper/FaceBeautyHelper;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/transsion/camera/feature/mode/makeup/helper/FaceBeautyHelper;->CUSTOM_KEY_LIST:Ljava/util/List;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot;->mCurrFeatureKey:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 286
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot;->mFaceBeautyHelper:Lcom/transsion/camera/feature/mode/makeup/helper/FaceBeautyHelper;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot;->mCurrFeatureKey:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/transsion/camera/feature/mode/makeup/helper/FaceBeautyHelper;->updateFeatureProgress(Ljava/lang/String;I)V

    .line 287
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot;->mAdapter:Lcom/transsion/camera/feature/mode/makeup/adapter/FaceBeautyAdapter;

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot;->mFaceBeautyHelper:Lcom/transsion/camera/feature/mode/makeup/helper/FaceBeautyHelper;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/makeup/helper/FaceBeautyHelper;->customDefault()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/transsion/camera/feature/mode/makeup/adapter/RvAdapter;->updateCustomDefault(Z)V

    .line 288
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot;->mFaceBeautySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    const-string p1, "custom"

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public registerSettingDevice(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .locals 4

    .line 248
    sget-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSettingDevice CameraId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISetting;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 249
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot;->mFaceBeautySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    .line 250
    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISetting;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot;->mCameraId:Ljava/lang/String;

    .line 251
    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISetting;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    .line 252
    new-instance v0, Lcom/transsion/camera/feature/mode/makeup/helper/FaceBeautyHelper;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    iget-object v3, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot;->mFaceBeautySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-direct {v0, v1, v2, v3}, Lcom/transsion/camera/feature/mode/makeup/helper/FaceBeautyHelper;-><init>(Landroid/content/Context;Lcom/transsion/camera/app/common/storage/DataStore;Lcom/transsion/camera/app/common/setting/ISetting;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot;->mFaceBeautyHelper:Lcom/transsion/camera/feature/mode/makeup/helper/FaceBeautyHelper;

    .line 253
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot;->mCameraId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/mode/makeup/helper/FaceBeautyHelper;->initCustomValue(Ljava/lang/String;)V

    .line 254
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot;->mFaceBeautyHelper:Lcom/transsion/camera/feature/mode/makeup/helper/FaceBeautyHelper;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/makeup/helper/FaceBeautyHelper;->getFeatureId()I

    move-result v0

    .line 255
    sget-object v1, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot;->CUSTOM_ID_MAP:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 256
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot;->mCurrFeatureKey:Ljava/lang/String;

    .line 258
    :cond_0
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot;->mAdapter:Lcom/transsion/camera/feature/mode/makeup/adapter/FaceBeautyAdapter;

    invoke-virtual {v1, v0}, Lcom/transsion/camera/feature/mode/makeup/adapter/FaceBeautyAdapter;->updateSelectedItemById(I)V

    .line 259
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot;->mAdapter:Lcom/transsion/camera/feature/mode/makeup/adapter/FaceBeautyAdapter;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot;->mFaceBeautyHelper:Lcom/transsion/camera/feature/mode/makeup/helper/FaceBeautyHelper;

    invoke-virtual {v1}, Lcom/transsion/camera/feature/mode/makeup/helper/FaceBeautyHelper;->customDefault()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/mode/makeup/adapter/RvAdapter;->updateCustomDefault(Z)V

    .line 260
    new-instance v0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot$4;

    invoke-direct {v0, p0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot$4;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot;Lcom/transsion/camera/app/common/setting/ISetting;)V

    invoke-static {v0}, Lcom/transsion/camera/app/common/ui/helper/ScrollHelper;->of(Lcom/transsion/camera/app/common/ui/helper/ScrollHelper$IStoreStrategy;)Lcom/transsion/camera/app/common/ui/helper/ScrollHelper;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 265
    invoke-virtual {p1, p0}, Lcom/transsion/camera/app/common/ui/helper/ScrollHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method public releaseResource()V
    .locals 4

    .line 324
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_1

    .line 325
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    const/4 v1, 0x0

    .line 326
    :goto_0
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 327
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 329
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/feature/mode/makeup/holder/FaceBeautyHolder;

    .line 330
    iget-object v2, v2, Lcom/transsion/camera/feature/mode/makeup/holder/FaceBeautyHolder;->mIconView:Landroid/widget/ImageView;

    .line 331
    invoke-static {v2}, Lcom/transsion/camera/utils/BitmapUtils;->releaseBitmap(Landroid/widget/ImageView;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setGender(Ljava/lang/String;)V
    .locals 0

    .line 180
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot;->mFaceBeautyHelper:Lcom/transsion/camera/feature/mode/makeup/helper/FaceBeautyHelper;

    if-eqz p0, :cond_0

    .line 181
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/makeup/helper/FaceBeautyHelper;->setGender(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setUIInterface(Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;)V
    .locals 0

    .line 279
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    .line 280
    iput-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot;->mITopUI:Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;

    return-void
.end method

.method public unregisterSettingDevice(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .locals 0

    .line 270
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot;->hideDialog()V

    .line 271
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot;->hideAutoHint()V

    const/4 p1, 0x0

    .line 272
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot;->mITopUI:Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;

    .line 273
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    .line 274
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot;->mFaceBeautySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    return-void
.end method

.method public updateFeatureUI(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 310
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot;->isClickDialog:Z

    .line 311
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot;->updateState()V

    .line 312
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    .line 314
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method updateLowLight(Z)V
    .locals 0

    .line 243
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot;->mAdapter:Lcom/transsion/camera/feature/mode/makeup/adapter/FaceBeautyAdapter;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/makeup/adapter/RvAdapter;->updateLowLight(Z)V

    return-void
.end method

.method public updateValueChange(Ljava/lang/String;)V
    .locals 0

    return-void
.end method
