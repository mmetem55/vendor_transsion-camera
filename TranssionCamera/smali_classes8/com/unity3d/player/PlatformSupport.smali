.class public Lcom/unity3d/player/PlatformSupport;
.super Ljava/lang/Object;


# static fields
.field static final MARSHMALLOW_SUPPORT:Z

.field static final NOUGAT_SUPPORT:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/unity3d/player/PlatformSupport;->MARSHMALLOW_SUPPORT:Z

    sput-boolean v0, Lcom/unity3d/player/PlatformSupport;->NOUGAT_SUPPORT:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
