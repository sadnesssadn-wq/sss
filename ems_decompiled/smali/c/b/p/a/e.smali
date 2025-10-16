.class public Lc/b/p/a/e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# instance fields
.field public final synthetic a:Lcom/emsportal/grab/activity/RequestGrabParcelActivity;


# direct methods
.method public constructor <init>(Lcom/emsportal/grab/activity/RequestGrabParcelActivity;)V
    .locals 0

    iput-object p1, p0, Lc/b/p/a/e;->a:Lcom/emsportal/grab/activity/RequestGrabParcelActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 0

    const p1, 0x7f080204

    if-ne p2, p1, :cond_0

    iget-object p1, p0, Lc/b/p/a/e;->a:Lcom/emsportal/grab/activity/RequestGrabParcelActivity;

    .line 1
    iget-object p2, p1, Lcom/emsportal/grab/activity/RequestGrabParcelActivity;->p:Lc/b/p/e/i;

    .line 2
    iput-object p2, p1, Lcom/emsportal/grab/activity/RequestGrabParcelActivity;->r:Lc/b/p/e/i;

    return-void

    :cond_0
    const p1, 0x7f080205

    if-ne p2, p1, :cond_1

    .line 3
    iget-object p1, p0, Lc/b/p/a/e;->a:Lcom/emsportal/grab/activity/RequestGrabParcelActivity;

    .line 4
    iget-object p2, p1, Lcom/emsportal/grab/activity/RequestGrabParcelActivity;->q:Lc/b/p/e/i;

    .line 5
    iput-object p2, p1, Lcom/emsportal/grab/activity/RequestGrabParcelActivity;->r:Lc/b/p/e/i;

    :cond_1
    return-void
.end method
