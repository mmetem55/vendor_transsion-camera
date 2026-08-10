.class synthetic Lcom/transsion/ardrawlines/view/RecordButton$1;
.super Ljava/lang/Object;
.source "RecordButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/ardrawlines/view/RecordButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$transsion$ardrawlines$view$RecordButton$RecordingState:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 141
    invoke-static {}, Lcom/transsion/ardrawlines/view/RecordButton$RecordingState;->values()[Lcom/transsion/ardrawlines/view/RecordButton$RecordingState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/transsion/ardrawlines/view/RecordButton$1;->$SwitchMap$com$transsion$ardrawlines$view$RecordButton$RecordingState:[I

    :try_start_0
    sget-object v1, Lcom/transsion/ardrawlines/view/RecordButton$RecordingState;->NOT_RECORDING:Lcom/transsion/ardrawlines/view/RecordButton$RecordingState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
