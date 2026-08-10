.class public interface abstract Lcom/transsion/camera/feature/common/glrender/GLCanvas;
.super Ljava/lang/Object;
.source "GLCanvas.java"


# static fields
.field public static final SAVE_FLAG_ALL:I = -0x1

.field public static final SAVE_FLAG_ALPHA:I = 0x1

.field public static final SAVE_FLAG_MATRIX:I = 0x2


# virtual methods
.method public abstract beginRenderTarget(Lcom/transsion/camera/feature/common/glrender/RawTexture;)V
.end method

.method public abstract clearBuffer()V
.end method

.method public abstract clearBuffer([F)V
.end method

.method public abstract deleteBuffer(I)V
.end method

.method public abstract deleteRecycledResources()V
.end method

.method public abstract drawLine(FFFFLcom/transsion/camera/feature/common/glrender/GLPaint;)V
.end method

.method public abstract drawMesh(Lcom/transsion/camera/feature/common/glrender/BasicTexture;IIIIII)V
.end method

.method public abstract drawMixed(Lcom/transsion/camera/feature/common/glrender/BasicTexture;IFIIII)V
.end method

.method public abstract drawMixed(Lcom/transsion/camera/feature/common/glrender/BasicTexture;IFLandroid/graphics/RectF;Landroid/graphics/RectF;)V
.end method

.method public abstract drawRect(FFFFLcom/transsion/camera/feature/common/glrender/GLPaint;)V
.end method

.method public abstract drawTexture(Lcom/transsion/camera/feature/common/glrender/BasicTexture;IIII)V
.end method

.method public abstract drawTexture(Lcom/transsion/camera/feature/common/glrender/BasicTexture;Landroid/graphics/RectF;Landroid/graphics/RectF;)V
.end method

.method public abstract drawTexture(Lcom/transsion/camera/feature/common/glrender/BasicTexture;[FIIII)V
.end method

.method public abstract dumpStatisticsAndClear()V
.end method

.method public abstract endRenderTarget()V
.end method

.method public abstract fillRect(FFFFI)V
.end method

.method public abstract getAlpha()F
.end method

.method public abstract getBounds(Landroid/graphics/Rect;IIII)V
.end method

.method public abstract getGLId()Lcom/transsion/camera/feature/common/glrender/GLId;
.end method

.method public abstract initializeTexture(Lcom/transsion/camera/feature/common/glrender/BasicTexture;Landroid/graphics/Bitmap;)V
.end method

.method public abstract initializeTextureSize(Lcom/transsion/camera/feature/common/glrender/BasicTexture;II)V
.end method

.method public abstract multiplyAlpha(F)V
.end method

.method public abstract multiplyMatrix([FI)V
.end method

.method public abstract recoverFromLightCycle()V
.end method

.method public abstract restore()V
.end method

.method public abstract rotate(FFFF)V
.end method

.method public abstract save()V
.end method

.method public abstract save(I)V
.end method

.method public abstract scale(FFF)V
.end method

.method public abstract setAlpha(F)V
.end method

.method public abstract setSize(II)V
.end method

.method public abstract setTextureParameters(Lcom/transsion/camera/feature/common/glrender/BasicTexture;)V
.end method

.method public abstract texSubImage2D(Lcom/transsion/camera/feature/common/glrender/BasicTexture;IILandroid/graphics/Bitmap;II)V
.end method

.method public abstract translate(FF)V
.end method

.method public abstract translate(FFF)V
.end method

.method public abstract unloadTexture(Lcom/transsion/camera/feature/common/glrender/BasicTexture;)Z
.end method

.method public abstract uploadBuffer(Ljava/nio/ByteBuffer;)I
.end method

.method public abstract uploadBuffer(Ljava/nio/FloatBuffer;)I
.end method
