.class public final enum Lcom/transsion/camera/feature/mode/movie/ui/widget/ScalableTextureView$ScaleType;
.super Ljava/lang/Enum;
.source "ScalableTextureView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/movie/ui/widget/ScalableTextureView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ScaleType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/transsion/camera/feature/mode/movie/ui/widget/ScalableTextureView$ScaleType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/transsion/camera/feature/mode/movie/ui/widget/ScalableTextureView$ScaleType;

.field public static final enum BOTTOM:Lcom/transsion/camera/feature/mode/movie/ui/widget/ScalableTextureView$ScaleType;

.field public static final enum CENTER_CROP:Lcom/transsion/camera/feature/mode/movie/ui/widget/ScalableTextureView$ScaleType;

.field public static final enum FILL:Lcom/transsion/camera/feature/mode/movie/ui/widget/ScalableTextureView$ScaleType;

.field public static final enum TOP:Lcom/transsion/camera/feature/mode/movie/ui/widget/ScalableTextureView$ScaleType;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 40
    new-instance v0, Lcom/transsion/camera/feature/mode/movie/ui/widget/ScalableTextureView$ScaleType;

    const-string v1, "CENTER_CROP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/feature/mode/movie/ui/widget/ScalableTextureView$ScaleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/camera/feature/mode/movie/ui/widget/ScalableTextureView$ScaleType;->CENTER_CROP:Lcom/transsion/camera/feature/mode/movie/ui/widget/ScalableTextureView$ScaleType;

    .line 41
    new-instance v1, Lcom/transsion/camera/feature/mode/movie/ui/widget/ScalableTextureView$ScaleType;

    const-string v3, "TOP"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/transsion/camera/feature/mode/movie/ui/widget/ScalableTextureView$ScaleType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/transsion/camera/feature/mode/movie/ui/widget/ScalableTextureView$ScaleType;->TOP:Lcom/transsion/camera/feature/mode/movie/ui/widget/ScalableTextureView$ScaleType;

    .line 42
    new-instance v3, Lcom/transsion/camera/feature/mode/movie/ui/widget/ScalableTextureView$ScaleType;

    const-string v5, "BOTTOM"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/transsion/camera/feature/mode/movie/ui/widget/ScalableTextureView$ScaleType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/transsion/camera/feature/mode/movie/ui/widget/ScalableTextureView$ScaleType;->BOTTOM:Lcom/transsion/camera/feature/mode/movie/ui/widget/ScalableTextureView$ScaleType;

    .line 43
    new-instance v5, Lcom/transsion/camera/feature/mode/movie/ui/widget/ScalableTextureView$ScaleType;

    const-string v7, "FILL"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/transsion/camera/feature/mode/movie/ui/widget/ScalableTextureView$ScaleType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/transsion/camera/feature/mode/movie/ui/widget/ScalableTextureView$ScaleType;->FILL:Lcom/transsion/camera/feature/mode/movie/ui/widget/ScalableTextureView$ScaleType;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/transsion/camera/feature/mode/movie/ui/widget/ScalableTextureView$ScaleType;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 39
    sput-object v7, Lcom/transsion/camera/feature/mode/movie/ui/widget/ScalableTextureView$ScaleType;->$VALUES:[Lcom/transsion/camera/feature/mode/movie/ui/widget/ScalableTextureView$ScaleType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 39
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/transsion/camera/feature/mode/movie/ui/widget/ScalableTextureView$ScaleType;
    .locals 1

    .line 39
    const-class v0, Lcom/transsion/camera/feature/mode/movie/ui/widget/ScalableTextureView$ScaleType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/ScalableTextureView$ScaleType;

    return-object p0
.end method

.method public static values()[Lcom/transsion/camera/feature/mode/movie/ui/widget/ScalableTextureView$ScaleType;
    .locals 1

    .line 39
    sget-object v0, Lcom/transsion/camera/feature/mode/movie/ui/widget/ScalableTextureView$ScaleType;->$VALUES:[Lcom/transsion/camera/feature/mode/movie/ui/widget/ScalableTextureView$ScaleType;

    invoke-virtual {v0}, [Lcom/transsion/camera/feature/mode/movie/ui/widget/ScalableTextureView$ScaleType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/transsion/camera/feature/mode/movie/ui/widget/ScalableTextureView$ScaleType;

    return-object v0
.end method
