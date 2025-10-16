.class public Lcom/zoho/commons/LauncherProperties;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private backgroundColor:I

.field private badgeBackgroundColor:I

.field private badgeTextColor:I

.field private icon:Landroid/graphics/drawable/Drawable;

.field private mode:I

.field private x:I

.field private y:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/zoho/commons/LauncherProperties;->x:I

    iput v0, p0, Lcom/zoho/commons/LauncherProperties;->y:I

    iput p1, p0, Lcom/zoho/commons/LauncherProperties;->mode:I

    invoke-direct {p0}, Lcom/zoho/commons/LauncherProperties;->init()V

    return-void
.end method

.method private init()V
    .locals 2

    iget v0, p0, Lcom/zoho/commons/LauncherProperties;->mode:I

    invoke-static {}, Lcom/zoho/livechat/android/config/DeviceConfig;->getLauncherMode()I

    move-result v1

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/zoho/livechat/android/config/DeviceConfig;->clearLauncherPositions()V

    :cond_0
    iget v0, p0, Lcom/zoho/commons/LauncherProperties;->mode:I

    invoke-static {v0}, Lcom/zoho/livechat/android/config/DeviceConfig;->setLauncherMode(I)V

    return-void
.end method


# virtual methods
.method public getBackgroundColor()I
    .locals 1

    iget v0, p0, Lcom/zoho/commons/LauncherProperties;->backgroundColor:I

    return v0
.end method

.method public getBadgeBackgroundColor()I
    .locals 1

    iget v0, p0, Lcom/zoho/commons/LauncherProperties;->badgeBackgroundColor:I

    return v0
.end method

.method public getBadgeTextColor()I
    .locals 1

    iget v0, p0, Lcom/zoho/commons/LauncherProperties;->badgeTextColor:I

    return v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/zoho/commons/LauncherProperties;->icon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getMode()I
    .locals 1

    iget v0, p0, Lcom/zoho/commons/LauncherProperties;->mode:I

    return v0
.end method

.method public getX()I
    .locals 4

    invoke-static {}, Lcom/zoho/livechat/android/config/DeviceConfig;->getLauncherPosition()[I

    move-result-object v0

    const/4 v1, 0x0

    aget v2, v0, v1

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    iget v0, p0, Lcom/zoho/commons/LauncherProperties;->x:I

    goto :goto_0

    :cond_0
    aget v0, v0, v1

    :goto_0
    return v0
.end method

.method public getY()I
    .locals 4

    invoke-static {}, Lcom/zoho/livechat/android/config/DeviceConfig;->getLauncherPosition()[I

    move-result-object v0

    const/4 v1, 0x1

    aget v2, v0, v1

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    iget v0, p0, Lcom/zoho/commons/LauncherProperties;->y:I

    goto :goto_0

    :cond_0
    aget v0, v0, v1

    :goto_0
    return v0
.end method

.method public setBackgroundColor(I)V
    .locals 0

    iput p1, p0, Lcom/zoho/commons/LauncherProperties;->backgroundColor:I

    return-void
.end method

.method public setBadgeBackgroundColor(I)V
    .locals 0

    iput p1, p0, Lcom/zoho/commons/LauncherProperties;->badgeBackgroundColor:I

    return-void
.end method

.method public setBadgeTextColor(I)V
    .locals 0

    iput p1, p0, Lcom/zoho/commons/LauncherProperties;->badgeTextColor:I

    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/zoho/commons/LauncherProperties;->icon:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setMode(I)V
    .locals 0

    iput p1, p0, Lcom/zoho/commons/LauncherProperties;->mode:I

    return-void
.end method

.method public setX(I)V
    .locals 2

    iput p1, p0, Lcom/zoho/commons/LauncherProperties;->x:I

    invoke-static {}, Lcom/zoho/livechat/android/config/DeviceConfig;->getLauncherPosition()[I

    move-result-object v0

    const/4 v1, 0x0

    aput p1, v0, v1

    invoke-static {v0}, Lcom/zoho/livechat/android/config/DeviceConfig;->setLauncherPosition([I)V

    return-void
.end method

.method public setY(I)V
    .locals 2

    iput p1, p0, Lcom/zoho/commons/LauncherProperties;->y:I

    invoke-static {}, Lcom/zoho/livechat/android/config/DeviceConfig;->getLauncherPosition()[I

    move-result-object v0

    const/4 v1, 0x1

    aput p1, v0, v1

    invoke-static {v0}, Lcom/zoho/livechat/android/config/DeviceConfig;->setLauncherPosition([I)V

    return-void
.end method
