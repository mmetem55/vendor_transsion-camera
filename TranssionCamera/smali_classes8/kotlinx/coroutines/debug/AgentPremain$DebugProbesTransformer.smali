.class public final Lkotlinx/coroutines/debug/AgentPremain$DebugProbesTransformer;
.super Ljava/lang/Object;
.source "AgentPremain.kt"

# interfaces
.implements Ljava/lang/instrument/ClassFileTransformer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/debug/AgentPremain;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DebugProbesTransformer"
.end annotation


# static fields
.field public static final INSTANCE:Lkotlinx/coroutines/debug/AgentPremain$DebugProbesTransformer;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlinx/coroutines/debug/AgentPremain$DebugProbesTransformer;

    invoke-direct {v0}, Lkotlinx/coroutines/debug/AgentPremain$DebugProbesTransformer;-><init>()V

    sput-object v0, Lkotlinx/coroutines/debug/AgentPremain$DebugProbesTransformer;->INSTANCE:Lkotlinx/coroutines/debug/AgentPremain$DebugProbesTransformer;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public transform(Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/Class;Ljava/security/ProtectionDomain;[B)[B
    .locals 0
    .param p1    # Ljava/lang/ClassLoader;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Class;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/security/ProtectionDomain;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # [B
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/security/ProtectionDomain;",
            "[B)[B"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string p0, "kotlin/coroutines/jvm/internal/DebugProbesKt"

    .line 45
    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 55
    :cond_0
    sget-object p0, Lkotlinx/coroutines/debug/AgentPremain;->INSTANCE:Lkotlinx/coroutines/debug/AgentPremain;

    const/4 p2, 0x1

    invoke-virtual {p0, p2}, Lkotlinx/coroutines/debug/AgentPremain;->setInstalledStatically(Z)V

    const-string p0, "DebugProbesKt.bin"

    .line 56
    invoke-virtual {p1, p0}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    invoke-static {p0}, Lkotlin/io/ByteStreamsKt;->readBytes(Ljava/io/InputStream;)[B

    move-result-object p0

    return-object p0
.end method
