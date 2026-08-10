.class public final enum Lcom/transsion/camera/app/common/provider/ProcessMediaItem$ProgressStatus;
.super Ljava/lang/Enum;
.source "ProcessMediaItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/common/provider/ProcessMediaItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ProgressStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/transsion/camera/app/common/provider/ProcessMediaItem$ProgressStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/transsion/camera/app/common/provider/ProcessMediaItem$ProgressStatus;

.field public static final enum DETERMINATE:Lcom/transsion/camera/app/common/provider/ProcessMediaItem$ProgressStatus;

.field public static final enum INDETERMINATE:Lcom/transsion/camera/app/common/provider/ProcessMediaItem$ProgressStatus;


# instance fields
.field private final identifier:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 78
    new-instance v0, Lcom/transsion/camera/app/common/provider/ProcessMediaItem$ProgressStatus;

    const-string v1, "INDETERMINATE"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/transsion/camera/app/common/provider/ProcessMediaItem$ProgressStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/transsion/camera/app/common/provider/ProcessMediaItem$ProgressStatus;->INDETERMINATE:Lcom/transsion/camera/app/common/provider/ProcessMediaItem$ProgressStatus;

    .line 82
    new-instance v1, Lcom/transsion/camera/app/common/provider/ProcessMediaItem$ProgressStatus;

    const-string v4, "DETERMINATE"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Lcom/transsion/camera/app/common/provider/ProcessMediaItem$ProgressStatus;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/transsion/camera/app/common/provider/ProcessMediaItem$ProgressStatus;->DETERMINATE:Lcom/transsion/camera/app/common/provider/ProcessMediaItem$ProgressStatus;

    new-array v4, v5, [Lcom/transsion/camera/app/common/provider/ProcessMediaItem$ProgressStatus;

    aput-object v0, v4, v2

    aput-object v1, v4, v3

    .line 74
    sput-object v4, Lcom/transsion/camera/app/common/provider/ProcessMediaItem$ProgressStatus;->$VALUES:[Lcom/transsion/camera/app/common/provider/ProcessMediaItem$ProgressStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 86
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 87
    iput p3, p0, Lcom/transsion/camera/app/common/provider/ProcessMediaItem$ProgressStatus;->identifier:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/transsion/camera/app/common/provider/ProcessMediaItem$ProgressStatus;
    .locals 1

    .line 74
    const-class v0, Lcom/transsion/camera/app/common/provider/ProcessMediaItem$ProgressStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/app/common/provider/ProcessMediaItem$ProgressStatus;

    return-object p0
.end method

.method public static values()[Lcom/transsion/camera/app/common/provider/ProcessMediaItem$ProgressStatus;
    .locals 1

    .line 74
    sget-object v0, Lcom/transsion/camera/app/common/provider/ProcessMediaItem$ProgressStatus;->$VALUES:[Lcom/transsion/camera/app/common/provider/ProcessMediaItem$ProgressStatus;

    invoke-virtual {v0}, [Lcom/transsion/camera/app/common/provider/ProcessMediaItem$ProgressStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/transsion/camera/app/common/provider/ProcessMediaItem$ProgressStatus;

    return-object v0
.end method


# virtual methods
.method public getIdentifier()I
    .locals 0

    .line 91
    iget p0, p0, Lcom/transsion/camera/app/common/provider/ProcessMediaItem$ProgressStatus;->identifier:I

    return p0
.end method
