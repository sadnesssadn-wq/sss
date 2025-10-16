.class public Lcom/emsportal/AppController;
.super Landroid/app/Application;
.source ""


# static fields
.field public static c:Lcom/emsportal/AppController;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 2

    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    sput-object p0, Lcom/emsportal/AppController;->c:Lcom/emsportal/AppController;

    const v0, 0x7f1000a7

    invoke-virtual {p0, v0}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/android/libraries/places/api/Places;->initialize(Landroid/content/Context;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lc/b/k/a;

    invoke-direct {v0}, Lc/b/k/a;-><init>()V

    sput-object v0, Lc/b/k/a;->c:Lc/b/k/a;

    new-instance v1, Lc/b/k/e;

    invoke-direct {v1, p0}, Lc/b/k/e;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lc/b/k/a;->a:Lc/b/k/e;

    new-instance v1, Lc/b/k/f/b;

    invoke-direct {v1, p0}, Lc/b/k/f/b;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lc/b/k/a;->b:Lc/b/k/f/b;

    .line 2
    invoke-static {p0}, Lb/u/a;->Q(Landroid/content/Context;)Lc/a/b/k;

    move-result-object v0

    sput-object v0, Lb/u/a;->d:Lc/a/b/k;

    .line 3
    invoke-static {}, Lc/b/t/b;->b()Lc/b/t/b;

    const-string v0, "2PVcr4vqOAUXHS72LATSkukmflHaNUur%2FYaIANFZ8tWlO6vaf8q0DTg97wcJswdf"

    const-string v1, "bXBD7ZUE9k6kYyPzo4pkN4zrFk8cihRjAe8SigO8Ec6T0XLU3CRl71CVlHVxrC4ratVBdkqjX%2Bo4z11b8Drxp3DHeKCbWz6Yk2Aznjdv6AGdTlg2YCf6GMqeY4eezxtodKMHQt7h5AqZYVoAlO85MA%3D%3D"

    invoke-static {p0, v0, v1}, Lcom/zoho/salesiqembed/ZohoSalesIQ;->init(Landroid/app/Application;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
