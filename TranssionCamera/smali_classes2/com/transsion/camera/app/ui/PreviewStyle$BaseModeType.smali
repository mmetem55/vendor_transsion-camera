.class abstract Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;
.super Ljava/lang/Object;
.source "PreviewStyle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/PreviewStyle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "BaseModeType"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType$HeightFullStyle;,
        Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType$WidthFullStyle;,
        Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType$BaseStyle;
    }
.end annotation


# instance fields
.field private mCurrentStyle:Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType$BaseStyle;

.field protected final mHeightFullStyle:Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType$BaseStyle;

.field private final mModeType:Ljava/lang/String;

.field protected final mWidthFullStyle:Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType$BaseStyle;

.field final synthetic this$0:Lcom/transsion/camera/app/ui/PreviewStyle;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/app/ui/PreviewStyle;Ljava/lang/String;)V
    .locals 1

    .line 154
    iput-object p1, p0, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;->this$0:Lcom/transsion/camera/app/ui/PreviewStyle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 236
    new-instance p1, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType$WidthFullStyle;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType$WidthFullStyle;-><init>(Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;Lcom/transsion/camera/app/ui/PreviewStyle$1;)V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;->mWidthFullStyle:Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType$BaseStyle;

    .line 237
    new-instance p1, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType$HeightFullStyle;

    invoke-direct {p1, p0, v0}, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType$HeightFullStyle;-><init>(Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;Lcom/transsion/camera/app/ui/PreviewStyle$1;)V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;->mHeightFullStyle:Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType$BaseStyle;

    .line 155
    iput-object p2, p0, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;->mModeType:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/app/ui/PreviewStyle;Ljava/lang/String;Lcom/transsion/camera/app/ui/PreviewStyle$1;)V
    .locals 0

    .line 150
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;-><init>(Lcom/transsion/camera/app/ui/PreviewStyle;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;)V
    .locals 0

    .line 150
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;->sizeChanged()V

    return-void
.end method

.method static synthetic access$100(Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;)V
    .locals 0

    .line 150
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;->changeStyle()V

    return-void
.end method

.method static synthetic access$1400(Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;)V
    .locals 0

    .line 150
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;->saveModeStyle()V

    return-void
.end method

.method static synthetic access$200(Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;)Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType$BaseStyle;
    .locals 0

    .line 150
    iget-object p0, p0, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;->mCurrentStyle:Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType$BaseStyle;

    return-object p0
.end method

.method static synthetic access$202(Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType$BaseStyle;)Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType$BaseStyle;
    .locals 0

    .line 150
    iput-object p1, p0, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;->mCurrentStyle:Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType$BaseStyle;

    return-object p1
.end method

.method private changeStyle()V
    .locals 1

    .line 159
    iget-object p0, p0, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;->mCurrentStyle:Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType$BaseStyle;

    if-nez p0, :cond_0

    .line 160
    invoke-static {}, Lcom/transsion/camera/app/ui/PreviewStyle;->access$600()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string v0, "changeStyle, mCurrentStyle is null!!!"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 163
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType$BaseStyle;->changeStyle()V

    return-void
.end method

.method private modeType()Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;
    .locals 1

    .line 189
    iget-object p0, p0, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;->mModeType:Ljava/lang/String;

    const-string v0, "mode_type_photo"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 190
    sget-object p0, Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;->PHOTO:Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;->VIDEO:Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;

    :goto_0
    return-object p0
.end method

.method private saveModeStyle()V
    .locals 4

    .line 228
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;->this$0:Lcom/transsion/camera/app/ui/PreviewStyle;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/PreviewStyle;->access$900(Lcom/transsion/camera/app/ui/PreviewStyle;)Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;->mModeType:Ljava/lang/String;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;->mCurrentStyle:Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType$BaseStyle;

    iget-object v2, v2, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType$BaseStyle;->mStyle:Ljava/lang/String;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;->this$0:Lcom/transsion/camera/app/ui/PreviewStyle;

    .line 229
    invoke-static {p0}, Lcom/transsion/camera/app/ui/PreviewStyle;->access$900(Lcom/transsion/camera/app/ui/PreviewStyle;)Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object p0

    const/4 v3, 0x0

    .line 228
    invoke-virtual {v0, v1, v2, p0, v3}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method private savedModeStyle()Ljava/lang/String;
    .locals 3

    .line 223
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;->this$0:Lcom/transsion/camera/app/ui/PreviewStyle;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/PreviewStyle;->access$900(Lcom/transsion/camera/app/ui/PreviewStyle;)Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;->mModeType:Ljava/lang/String;

    .line 224
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;->defaultStyle()Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType$BaseStyle;

    move-result-object v2

    iget-object v2, v2, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType$BaseStyle;->mStyle:Ljava/lang/String;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;->this$0:Lcom/transsion/camera/app/ui/PreviewStyle;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/PreviewStyle;->access$900(Lcom/transsion/camera/app/ui/PreviewStyle;)Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object p0

    .line 223
    invoke-virtual {v0, v1, v2, p0}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private savedStyle()Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType$BaseStyle;
    .locals 2

    .line 207
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;->savedModeStyle()Ljava/lang/String;

    move-result-object v0

    .line 208
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    const-string v1, "height_full_style"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "width_full_style"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 216
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;->defaultStyle()Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType$BaseStyle;

    move-result-object p0

    goto :goto_0

    .line 210
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;->mWidthFullStyle:Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType$BaseStyle;

    goto :goto_0

    .line 213
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;->mHeightFullStyle:Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType$BaseStyle;

    :goto_0
    return-object p0
.end method

.method private sizeChanged()V
    .locals 2

    .line 167
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;->mCurrentStyle:Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType$BaseStyle;

    if-nez v0, :cond_0

    .line 168
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;->savedStyle()Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType$BaseStyle;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType$BaseStyle;->entry(Z)V

    .line 170
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;->mCurrentStyle:Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType$BaseStyle;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType$BaseStyle;->sizeChanged()V

    return-void
.end method


# virtual methods
.method abstract defaultStyle()Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType$BaseStyle;
.end method

.method final entry()V
    .locals 3

    .line 174
    invoke-static {}, Lcom/transsion/camera/app/ui/PreviewStyle;->access$600()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mode type change from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    iget-object v2, p0, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;->this$0:Lcom/transsion/camera/app/ui/PreviewStyle;

    invoke-static {v2}, Lcom/transsion/camera/app/ui/PreviewStyle;->access$700(Lcom/transsion/camera/app/ui/PreviewStyle;)Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;->this$0:Lcom/transsion/camera/app/ui/PreviewStyle;

    invoke-static {v2}, Lcom/transsion/camera/app/ui/PreviewStyle;->access$700(Lcom/transsion/camera/app/ui/PreviewStyle;)Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;

    move-result-object v2

    iget-object v2, v2, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;->mModeType:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v2, ""

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;->mModeType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 174
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 176
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;->this$0:Lcom/transsion/camera/app/ui/PreviewStyle;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/PreviewStyle;->access$700(Lcom/transsion/camera/app/ui/PreviewStyle;)Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;

    move-result-object v0

    if-eq v0, p0, :cond_3

    .line 177
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;->this$0:Lcom/transsion/camera/app/ui/PreviewStyle;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/PreviewStyle;->access$700(Lcom/transsion/camera/app/ui/PreviewStyle;)Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 178
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;->this$0:Lcom/transsion/camera/app/ui/PreviewStyle;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/PreviewStyle;->access$700(Lcom/transsion/camera/app/ui/PreviewStyle;)Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;->onLeave()V

    .line 180
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;->this$0:Lcom/transsion/camera/app/ui/PreviewStyle;

    invoke-static {v0, p0}, Lcom/transsion/camera/app/ui/PreviewStyle;->access$702(Lcom/transsion/camera/app/ui/PreviewStyle;Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;)Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;

    .line 181
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;->this$0:Lcom/transsion/camera/app/ui/PreviewStyle;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/PreviewStyle;->access$800(Lcom/transsion/camera/app/ui/PreviewStyle;)Lcom/transsion/camera/app/ui/PreviewStyle$IModeTypeListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 182
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;->this$0:Lcom/transsion/camera/app/ui/PreviewStyle;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/PreviewStyle;->access$800(Lcom/transsion/camera/app/ui/PreviewStyle;)Lcom/transsion/camera/app/ui/PreviewStyle$IModeTypeListener;

    move-result-object v0

    invoke-direct {p0}, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;->modeType()Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/ui/PreviewStyle$IModeTypeListener;->onTypeChanged(Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;)V

    .line 184
    :cond_2
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;->onEntry()V

    :cond_3
    return-void
.end method

.method protected onEntry()V
    .locals 2

    .line 194
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;->mCurrentStyle:Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType$BaseStyle;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 195
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;->savedStyle()Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType$BaseStyle;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType$BaseStyle;->entry(Z)V

    goto :goto_0

    .line 197
    :cond_0
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType$BaseStyle;->entry(Z)V

    :goto_0
    return-void
.end method

.method protected onLeave()V
    .locals 0

    return-void
.end method
