.class public final Lcom/squareup/wire/VersionKt;
.super Ljava/lang/Object;
.source "Version.kt"


# static fields
.field private static final VERSION:Ljava/lang/String; = "4.4.1"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static final getVERSION()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 3
    sget-object v0, Lcom/squareup/wire/VersionKt;->VERSION:Ljava/lang/String;

    return-object v0
.end method
