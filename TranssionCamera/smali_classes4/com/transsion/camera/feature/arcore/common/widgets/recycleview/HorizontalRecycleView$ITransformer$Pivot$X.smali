.class public abstract enum Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView$ITransformer$Pivot$X;
.super Ljava/lang/Enum;
.source "HorizontalRecycleView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView$ITransformer$Pivot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4409
    name = "X"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView$ITransformer$Pivot$X;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView$ITransformer$Pivot$X;

.field public static final enum CENTER:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView$ITransformer$Pivot$X;

.field public static final enum LEFT:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView$ITransformer$Pivot$X;

.field public static final enum RIGHT:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView$ITransformer$Pivot$X;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 731
    new-instance v0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView$ITransformer$Pivot$X$1;

    const-string v1, "LEFT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView$ITransformer$Pivot$X$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView$ITransformer$Pivot$X;->LEFT:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView$ITransformer$Pivot$X;

    .line 737
    new-instance v1, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView$ITransformer$Pivot$X$2;

    const-string v3, "CENTER"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView$ITransformer$Pivot$X$2;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView$ITransformer$Pivot$X;->CENTER:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView$ITransformer$Pivot$X;

    .line 743
    new-instance v3, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView$ITransformer$Pivot$X$3;

    const-string v5, "RIGHT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView$ITransformer$Pivot$X$3;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView$ITransformer$Pivot$X;->RIGHT:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView$ITransformer$Pivot$X;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView$ITransformer$Pivot$X;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 730
    sput-object v5, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView$ITransformer$Pivot$X;->$VALUES:[Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView$ITransformer$Pivot$X;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 730
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView$1;)V
    .locals 0

    .line 730
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView$ITransformer$Pivot$X;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView$ITransformer$Pivot$X;
    .locals 1

    .line 730
    const-class v0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView$ITransformer$Pivot$X;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView$ITransformer$Pivot$X;

    return-object p0
.end method

.method public static values()[Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView$ITransformer$Pivot$X;
    .locals 1

    .line 730
    sget-object v0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView$ITransformer$Pivot$X;->$VALUES:[Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView$ITransformer$Pivot$X;

    invoke-virtual {v0}, [Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView$ITransformer$Pivot$X;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView$ITransformer$Pivot$X;

    return-object v0
.end method


# virtual methods
.method public abstract create()Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView$ITransformer$Pivot;
.end method
