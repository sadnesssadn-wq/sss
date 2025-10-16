.class public Lcom/emsportal/instant/activity/CreateSuperParcelActivity$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/b/w/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/emsportal/instant/activity/CreateSuperParcelActivity;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/emsportal/instant/activity/CreateSuperParcelActivity;


# direct methods
.method public constructor <init>(Lcom/emsportal/instant/activity/CreateSuperParcelActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/emsportal/instant/activity/CreateSuperParcelActivity$c;->a:Lcom/emsportal/instant/activity/CreateSuperParcelActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/emsportal/instant/activity/CreateSuperParcelActivity$c;->a:Lcom/emsportal/instant/activity/CreateSuperParcelActivity;

    .line 1
    iget-object v0, v0, Lcom/emsportal/instant/activity/CreateSuperParcelActivity;->e:Landroid/widget/EditText;

    .line 2
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/emsportal/instant/activity/CreateSuperParcelActivity$c;->a:Lcom/emsportal/instant/activity/CreateSuperParcelActivity;

    const-wide/16 v0, 0x0

    .line 3
    iput-wide v0, p1, Lcom/emsportal/instant/activity/CreateSuperParcelActivity;->u:D

    .line 4
    iput-wide v0, p1, Lcom/emsportal/instant/activity/CreateSuperParcelActivity;->v:D

    return-void
.end method
