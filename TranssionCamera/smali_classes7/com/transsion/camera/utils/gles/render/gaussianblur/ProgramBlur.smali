.class Lcom/transsion/camera/utils/gles/render/gaussianblur/ProgramBlur;
.super Lcom/transsion/camera/utils/gles/render/gaussianblur/BaseProgram;
.source "ProgramBlur.java"


# instance fields
.field private mBlurOffsetH:F

.field private mBlurOffsetLoc:I

.field private mBlurOffsetW:F

.field private mBlurRadius:I

.field private mBlurRadiusLoc:I

.field private mScaleRatio:I

.field private mSumWeight:F

.field private mSumWeightLoc:I


# direct methods
.method protected constructor <init>()V
    .locals 2

    const-string v0, "attribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n    gl_Position =  aPosition;\n    vTextureCoord = aTextureCoord.xy;\n}\n"

    const-string v1, "precision mediump float;\nuniform int uBlurRadius;\nuniform vec2 uBlurOffset;\nuniform float uSumWeight;\nuniform sampler2D uSampler;\nvarying vec2 vTextureCoord;\nconst float PI = 3.1415926;\nvec2 clampCoordinate(vec2 coordinate) {\n    return vec2(clamp(coordinate.x, 0.0, 1.0), clamp(coordinate.y, 0.0, 1.0));\n}\nfloat getWeight(int i) {\n    float sigma = float(uBlurRadius) / 3.0;\n    return (1.0 / sqrt(2.0 * PI * sigma * sigma)) * exp(-float(i * i) / (2.0 * sigma * sigma)) / uSumWeight;\n}\nvoid main() {\n    vec4 sourceColor = texture2D(uSampler, vTextureCoord);\n    if (uBlurRadius <= 1) {\n        gl_FragColor = sourceColor;\n        return;\n    }\n    float weight = getWeight(0);\n    vec3 finalColor = sourceColor.rgb * weight;\n    for (int i = 1; i < uBlurRadius; i++) {\n        weight = getWeight(i);\n        finalColor += texture2D(uSampler, clampCoordinate(vTextureCoord - uBlurOffset * float(i))).rgb * weight;\n        finalColor += texture2D(uSampler, clampCoordinate(vTextureCoord + uBlurOffset * float(i))).rgb * weight;\n    }\n    gl_FragColor = vec4(finalColor, sourceColor.a);\n}\n"

    .line 68
    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/utils/gles/render/gaussianblur/BaseProgram;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public draw(III)Z
    .locals 3

    .line 98
    iget v0, p0, Lcom/transsion/camera/utils/gles/render/gaussianblur/ProgramBlur;->mScaleRatio:I

    int-to-float v1, v0

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    .line 99
    div-int/2addr p2, v0

    .line 100
    div-int/2addr p3, v0

    .line 102
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/utils/gles/render/gaussianblur/BaseProgram;->draw(III)Z

    move-result p0

    return p0
.end method

.method protected onInitLocation()V
    .locals 2

    .line 90
    invoke-super {p0}, Lcom/transsion/camera/utils/gles/render/gaussianblur/BaseProgram;->onInitLocation()V

    .line 91
    iget v0, p0, Lcom/transsion/camera/utils/gles/render/gaussianblur/BaseProgram;->mProgram:I

    const-string v1, "uBlurRadius"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/utils/gles/render/gaussianblur/ProgramBlur;->mBlurRadiusLoc:I

    .line 92
    iget v0, p0, Lcom/transsion/camera/utils/gles/render/gaussianblur/BaseProgram;->mProgram:I

    const-string v1, "uBlurOffset"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/utils/gles/render/gaussianblur/ProgramBlur;->mBlurOffsetLoc:I

    .line 93
    iget v0, p0, Lcom/transsion/camera/utils/gles/render/gaussianblur/BaseProgram;->mProgram:I

    const-string v1, "uSumWeight"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/utils/gles/render/gaussianblur/ProgramBlur;->mSumWeightLoc:I

    return-void
.end method

.method protected onSetOtherData()V
    .locals 4

    .line 107
    invoke-super {p0}, Lcom/transsion/camera/utils/gles/render/gaussianblur/BaseProgram;->onSetOtherData()V

    .line 108
    iget v0, p0, Lcom/transsion/camera/utils/gles/render/gaussianblur/ProgramBlur;->mBlurRadiusLoc:I

    iget v1, p0, Lcom/transsion/camera/utils/gles/render/gaussianblur/ProgramBlur;->mBlurRadius:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 109
    iget v0, p0, Lcom/transsion/camera/utils/gles/render/gaussianblur/ProgramBlur;->mBlurOffsetLoc:I

    iget v1, p0, Lcom/transsion/camera/utils/gles/render/gaussianblur/ProgramBlur;->mBlurOffsetW:F

    invoke-virtual {p0}, Lcom/transsion/camera/utils/gles/render/gaussianblur/BaseProgram;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget v2, p0, Lcom/transsion/camera/utils/gles/render/gaussianblur/ProgramBlur;->mBlurOffsetH:F

    invoke-virtual {p0}, Lcom/transsion/camera/utils/gles/render/gaussianblur/BaseProgram;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glUniform2f(IFF)V

    .line 110
    iget v0, p0, Lcom/transsion/camera/utils/gles/render/gaussianblur/ProgramBlur;->mSumWeightLoc:I

    iget p0, p0, Lcom/transsion/camera/utils/gles/render/gaussianblur/ProgramBlur;->mSumWeight:F

    invoke-static {v0, p0}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    return-void
.end method

.method public setBlurOffset(FF)V
    .locals 0

    .line 80
    iput p1, p0, Lcom/transsion/camera/utils/gles/render/gaussianblur/ProgramBlur;->mBlurOffsetW:F

    .line 81
    iput p2, p0, Lcom/transsion/camera/utils/gles/render/gaussianblur/ProgramBlur;->mBlurOffsetH:F

    return-void
.end method

.method public setBlurRadius(I)V
    .locals 0

    .line 76
    iput p1, p0, Lcom/transsion/camera/utils/gles/render/gaussianblur/ProgramBlur;->mBlurRadius:I

    return-void
.end method

.method public setScaleRatio(I)V
    .locals 0

    .line 72
    iput p1, p0, Lcom/transsion/camera/utils/gles/render/gaussianblur/ProgramBlur;->mScaleRatio:I

    return-void
.end method

.method public setSumWeight(F)V
    .locals 0

    .line 85
    iput p1, p0, Lcom/transsion/camera/utils/gles/render/gaussianblur/ProgramBlur;->mSumWeight:F

    return-void
.end method
