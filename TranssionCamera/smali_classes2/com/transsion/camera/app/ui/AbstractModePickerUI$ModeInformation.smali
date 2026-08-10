.class Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;
.super Ljava/lang/Object;
.source "AbstractModePickerUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/AbstractModePickerUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ModeInformation"
.end annotation


# instance fields
.field private MAX_MODES_NUMBER_IN_TAB:I

.field private mCurrentIsTabLayoutMode:Z

.field private mCurrentModeIndexInTabLayout:I

.field private mCurrentModeItem:Lcom/transsion/camera/app/common/FeatureResource;

.field private mDefaultModeFeatureName:Ljava/lang/String;

.field private mDefaultSelectedMode:Ljava/lang/String;

.field private mIsSupportMoreMode:Z

.field private mIsSupportNewMoreMode:Z

.field private mModeFurtherText:Ljava/lang/String;

.field private mModeItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/FeatureResource;",
            ">;"
        }
    .end annotation
.end field

.field private mTabLayoutModeItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/FeatureResource;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/transsion/camera/app/ui/AbstractModePickerUI;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/AbstractModePickerUI;I)V
    .locals 0

    .line 1266
    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;->this$0:Lcom/transsion/camera/app/ui/AbstractModePickerUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1267
    iput p2, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;->MAX_MODES_NUMBER_IN_TAB:I

    return-void
.end method

.method constructor <init>(Lcom/transsion/camera/app/ui/AbstractModePickerUI;Ljava/lang/String;Lcom/transsion/camera/app/mode/ModeOrderProvider;)V
    .locals 1

    .line 1271
    invoke-virtual {p3}, Lcom/transsion/camera/app/mode/ModeOrderProvider;->getConfig()Lcom/transsion/camera/app/mode/ModePickerConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/mode/ModePickerConfig;->defaultModeCountInTab()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;-><init>(Lcom/transsion/camera/app/ui/AbstractModePickerUI;I)V

    .line 1272
    iput-object p2, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;->mModeFurtherText:Ljava/lang/String;

    .line 1273
    invoke-virtual {p3}, Lcom/transsion/camera/app/mode/ModeOrderProvider;->getConfig()Lcom/transsion/camera/app/mode/ModePickerConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/app/mode/ModePickerConfig;->modePickerStyleNormalMore()Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;->mIsSupportMoreMode:Z

    .line 1274
    invoke-virtual {p3}, Lcom/transsion/camera/app/mode/ModeOrderProvider;->getConfig()Lcom/transsion/camera/app/mode/ModePickerConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/app/mode/ModePickerConfig;->modePickerStyleMore()Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;->mIsSupportNewMoreMode:Z

    return-void
.end method

.method static synthetic access$1400(Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;)I
    .locals 0

    .line 1252
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;->currentModeIndexInTabLayout()I

    move-result p0

    return p0
.end method

.method static synthetic access$1500(Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1252
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;->updateModeListAndDefaultMode(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 1252
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;->updateModeListAndDefaultMode(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$1700(Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;Ljava/lang/String;)V
    .locals 0

    .line 1252
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;->updateCurrentMode(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;Ljava/lang/String;)Z
    .locals 0

    .line 1252
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;->isTabLayoutMode(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1900(Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;)Ljava/lang/String;
    .locals 0

    .line 1252
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;->currentModeFeatureName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2200(Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;)Lcom/transsion/camera/app/common/FeatureResource;
    .locals 0

    .line 1252
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;->mCurrentModeItem:Lcom/transsion/camera/app/common/FeatureResource;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;)V
    .locals 0

    .line 1252
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;->updateCurrentMode()V

    return-void
.end method

.method static synthetic access$2900(Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;I)V
    .locals 0

    .line 1252
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;->updateCurrentMode(I)V

    return-void
.end method

.method static synthetic access$3800(Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;)Z
    .locals 0

    .line 1252
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;->validModeList()Z

    move-result p0

    return p0
.end method

.method static synthetic access$3900(Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;)Ljava/util/List;
    .locals 0

    .line 1252
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;->getTabLayoutMode()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;)Z
    .locals 0

    .line 1252
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;->currentIsTabLayoutMode()Z

    move-result p0

    return p0
.end method

.method static synthetic access$4000(Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;Lcom/transsion/camera/app/common/FeatureResource;Z)Z
    .locals 0

    .line 1252
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;->defaultSelectedMode(Lcom/transsion/camera/app/common/FeatureResource;Z)Z

    move-result p0

    return p0
.end method

.method static synthetic access$4100(Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;I)Lcom/transsion/camera/app/common/FeatureResource;
    .locals 0

    .line 1252
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;->getTabLayoutMode(I)Lcom/transsion/camera/app/common/FeatureResource;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$4200(Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;)Z
    .locals 0

    .line 1252
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;->mCurrentIsTabLayoutMode:Z

    return p0
.end method

.method static synthetic access$500(Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;)Ljava/lang/String;
    .locals 0

    .line 1252
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;->currentModeShowName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private currentIsTabLayoutMode(I)V
    .locals 3

    .line 1360
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;->this$0:Lcom/transsion/camera/app/ui/AbstractModePickerUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->access$2600(Lcom/transsion/camera/app/ui/AbstractModePickerUI;)Lcom/transsion/camera/app/mode/ModeOrderProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/mode/ModeOrderProvider;->getConfig()Lcom/transsion/camera/app/mode/ModePickerConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/mode/ModePickerConfig;->modePickerStyleMore()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 1361
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;->this$0:Lcom/transsion/camera/app/ui/AbstractModePickerUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->access$2600(Lcom/transsion/camera/app/ui/AbstractModePickerUI;)Lcom/transsion/camera/app/mode/ModeOrderProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/mode/ModeOrderProvider;->getTabModeList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;->mCurrentIsTabLayoutMode:Z

    goto :goto_2

    .line 1363
    :cond_1
    iget v0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;->MAX_MODES_NUMBER_IN_TAB:I

    if-ge p1, v0, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;->mCurrentIsTabLayoutMode:Z

    :goto_2
    return-void
.end method

.method private currentIsTabLayoutMode()Z
    .locals 0

    .line 1368
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;->mCurrentIsTabLayoutMode:Z

    return p0
.end method

.method private currentModeFeatureName()Ljava/lang/String;
    .locals 0

    .line 1395
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;->mCurrentModeItem:Lcom/transsion/camera/app/common/FeatureResource;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1398
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/common/FeatureResource;->mFeatureName:Ljava/lang/String;

    return-object p0
.end method

.method private currentModeIndexInTabLayout()I
    .locals 0

    .line 1372
    iget p0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;->mCurrentModeIndexInTabLayout:I

    return p0
.end method

.method private currentModeShowName()Ljava/lang/String;
    .locals 0

    .line 1387
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;->mCurrentModeItem:Lcom/transsion/camera/app/common/FeatureResource;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1390
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/common/FeatureResource;->mFeatureTitle:Ljava/lang/String;

    return-object p0
.end method

.method private defaultSelectedMode(Lcom/transsion/camera/app/common/FeatureResource;Z)Z
    .locals 0

    .line 1320
    iget-object p1, p1, Lcom/transsion/camera/app/common/FeatureResource;->mFeatureName:Ljava/lang/String;

    if-eqz p2, :cond_0

    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;->mDefaultModeFeatureName:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;->mDefaultSelectedMode:Ljava/lang/String;

    :goto_0
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private getTabLayoutMode(I)Lcom/transsion/camera/app/common/FeatureResource;
    .locals 0

    .line 1324
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;->mTabLayoutModeItems:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/app/common/FeatureResource;

    return-object p0
.end method

.method private getTabLayoutMode()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/FeatureResource;",
            ">;"
        }
    .end annotation

    .line 1316
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;->mTabLayoutModeItems:Ljava/util/List;

    return-object p0
.end method

.method private isTabLayoutMode(Ljava/lang/String;)Z
    .locals 1

    .line 1376
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;->mTabLayoutModeItems:Ljava/util/List;

    if-eqz p0, :cond_1

    .line 1377
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/common/FeatureResource;

    .line 1378
    iget-object v0, v0, Lcom/transsion/camera/app/common/FeatureResource;->mFeatureName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private updateCurrentMode()V
    .locals 1

    .line 1328
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;->mDefaultModeFeatureName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;->updateCurrentMode(Ljava/lang/String;)V

    return-void
.end method

.method private updateCurrentMode(I)V
    .locals 3

    .line 1332
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;->mTabLayoutModeItems:Ljava/util/List;

    if-eqz v0, :cond_1

    if-ltz p1, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 1336
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;->mTabLayoutModeItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/common/FeatureResource;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;->mCurrentModeItem:Lcom/transsion/camera/app/common/FeatureResource;

    const/4 v1, 0x1

    .line 1337
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;->mCurrentIsTabLayoutMode:Z

    .line 1338
    iput p1, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;->mCurrentModeIndexInTabLayout:I

    .line 1339
    iget-object p1, v0, Lcom/transsion/camera/app/common/FeatureResource;->mFeatureName:Ljava/lang/String;

    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;->mDefaultSelectedMode:Ljava/lang/String;

    return-void

    .line 1333
    :cond_1
    :goto_0
    invoke-static {}, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->access$4500()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateCurrentMode index:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " mTabLayoutModeItems:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;->mTabLayoutModeItems:Ljava/util/List;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private updateCurrentMode(Ljava/lang/String;)V
    .locals 3

    .line 1343
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;->mModeItems:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 1344
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    .line 1346
    iget-object v2, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;->mModeItems:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/app/common/FeatureResource;

    iget-object v2, v2, Lcom/transsion/camera/app/common/FeatureResource;->mFeatureName:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1347
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;->mModeItems:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/app/common/FeatureResource;

    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;->mCurrentModeItem:Lcom/transsion/camera/app/common/FeatureResource;

    .line 1348
    invoke-direct {p0, v1}, Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;->currentIsTabLayoutMode(I)V

    .line 1349
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;->mCurrentIsTabLayoutMode:Z

    if-eqz p1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, -0x1

    :goto_1
    iput v1, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;->mCurrentModeIndexInTabLayout:I

    if-eqz p1, :cond_1

    .line 1351
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;->mCurrentModeItem:Lcom/transsion/camera/app/common/FeatureResource;

    iget-object p1, p1, Lcom/transsion/camera/app/common/FeatureResource;->mFeatureName:Ljava/lang/String;

    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;->mDefaultSelectedMode:Ljava/lang/String;

    :cond_1
    return-void

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private updateModeListAndDefaultMode(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/FeatureResource;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1278
    iput-object p3, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;->mDefaultModeFeatureName:Ljava/lang/String;

    .line 1279
    iput-object p2, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;->mDefaultSelectedMode:Ljava/lang/String;

    .line 1280
    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;->mModeItems:Ljava/util/List;

    .line 1281
    iget-boolean p2, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;->mIsSupportMoreMode:Z

    const/4 p3, 0x0

    if-eqz p2, :cond_2

    if-nez p1, :cond_0

    return-void

    .line 1285
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iget p2, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;->MAX_MODES_NUMBER_IN_TAB:I

    if-gt p1, p2, :cond_1

    .line 1286
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;->mModeItems:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    invoke-interface {p1, p3, p2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;->mTabLayoutModeItems:Ljava/util/List;

    return-void

    .line 1289
    :cond_1
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;->mModeItems:Ljava/util/List;

    add-int/lit8 p2, p2, -0x1

    invoke-interface {p1, p3, p2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;->mTabLayoutModeItems:Ljava/util/List;

    .line 1290
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    .line 1291
    iget-object p2, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;->mTabLayoutModeItems:Ljava/util/List;

    add-int/lit8 p1, p1, -0x1

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/app/common/FeatureResource;

    .line 1292
    iget-object p1, p1, Lcom/transsion/camera/app/common/FeatureResource;->mFeatureName:Ljava/lang/String;

    const-string p2, "FURTHER_MODE_TAG"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 1293
    new-instance p1, Lcom/transsion/camera/app/common/FeatureResource;

    invoke-direct {p1}, Lcom/transsion/camera/app/common/FeatureResource;-><init>()V

    .line 1294
    iget-object p3, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;->mModeFurtherText:Ljava/lang/String;

    iput-object p3, p1, Lcom/transsion/camera/app/common/FeatureResource;->mFeatureTitle:Ljava/lang/String;

    .line 1295
    iput-object p2, p1, Lcom/transsion/camera/app/common/FeatureResource;->mFeatureName:Ljava/lang/String;

    .line 1296
    iget-object p2, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;->mTabLayoutModeItems:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1298
    :cond_2
    iget-boolean p2, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;->mIsSupportNewMoreMode:Z

    if-eqz p2, :cond_3

    .line 1299
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;->this$0:Lcom/transsion/camera/app/ui/AbstractModePickerUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->access$2600(Lcom/transsion/camera/app/ui/AbstractModePickerUI;)Lcom/transsion/camera/app/mode/ModeOrderProvider;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/app/mode/ModeOrderProvider;->getTabModeList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;->mTabLayoutModeItems:Ljava/util/List;

    goto :goto_0

    .line 1301
    :cond_3
    iget p2, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;->MAX_MODES_NUMBER_IN_TAB:I

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    invoke-interface {p1, p3, p2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;->mTabLayoutModeItems:Ljava/util/List;

    .line 1303
    :cond_4
    :goto_0
    invoke-static {}, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->access$4500()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "mModeItems:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;->mModeItems:Ljava/util/List;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private updateModeListAndDefaultMode(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/FeatureResource;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 1307
    iput p4, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;->MAX_MODES_NUMBER_IN_TAB:I

    .line 1308
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;->updateModeListAndDefaultMode(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private validModeList()Z
    .locals 0

    .line 1312
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;->mModeItems:Ljava/util/List;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
